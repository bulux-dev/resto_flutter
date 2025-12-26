import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

/// Servicio para compresión inteligente de imágenes
/// Optimiza automáticamente el tamaño y calidad para mejorar rendimiento
class ImageCompressionService {
  
  /// Configuración de compresión por defecto
  static const _defaultQuality = 75; // 75% calidad (buen equilibrio)
  static const _maxWidth = 1200;     // Máximo 1200px ancho
  static const _maxHeight = 900;     // Máximo 900px alto
  static const _maxFileSizeKB = 800; // Máximo 800KB por imagen
  
  /// Comprime una imagen manteniendo buena calidad visual
  static Future<File?> compressImage(
    File imageFile, {
    int quality = _defaultQuality,
    int maxWidth = _maxWidth,
    int maxHeight = _maxHeight,
    int maxFileSizeKB = _maxFileSizeKB,
  }) async {
    try {
      // Verificar si el archivo existe
      if (!await imageFile.exists()) {
        print('Error: Archivo de imagen no existe');
        return null;
      }

      // Obtener información del archivo original
      final originalSize = await imageFile.length();
      final originalSizeKB = originalSize / 1024;
      
      print('📸 Comprimiendo imagen: ${path.basename(imageFile.path)}');
      print('   Tamaño original: ${originalSizeKB.toStringAsFixed(1)} KB');

      // Si ya es pequeña, no comprimir
      if (originalSizeKB <= maxFileSizeKB) {
        print('   ✅ Imagen ya optimizada, no necesita compresión');
        return imageFile;
      }

      // Crear directorio temporal para imagen comprimida
      final tempDir = await getTemporaryDirectory();
      final fileName = path.basename(imageFile.path);
      final nameWithoutExt = path.basenameWithoutExtension(fileName);
      final compressedPath = path.join(
        tempDir.path, 
        '${nameWithoutExt}_compressed.jpg'
      );

      // Comprimir imagen
      final compressedBytes = await FlutterImageCompress.compressWithFile(
        imageFile.absolute.path,
        quality: quality,
        minWidth: maxWidth,
        minHeight: maxHeight,
        format: CompressFormat.jpeg, // JPEG es más eficiente
      );

      if (compressedBytes == null) {
        print('   ❌ Error en compresión');
        return imageFile; // Retornar original si falla
      }

      // Guardar imagen comprimida
      final compressedFile = File(compressedPath);
      await compressedFile.writeAsBytes(compressedBytes);

      // Verificar resultado
      final compressedSize = compressedBytes.length;
      final compressedSizeKB = compressedSize / 1024;
      final compressionRatio = ((originalSize - compressedSize) / originalSize * 100);

      print('   ✅ Compresión exitosa:');
      print('      Tamaño final: ${compressedSizeKB.toStringAsFixed(1)} KB');
      print('      Reducción: ${compressionRatio.toStringAsFixed(1)}%');

      return compressedFile;
      
    } catch (e) {
      print('❌ Error comprimiendo imagen: $e');
      return imageFile; // Retornar original si hay error
    }
  }

  /// Comprime múltiples imágenes en paralelo
  static Future<List<File>> compressMultipleImages(
    List<File> imageFiles, {
    int quality = _defaultQuality,
    int maxWidth = _maxWidth,
    int maxHeight = _maxHeight,
    int maxFileSizeKB = _maxFileSizeKB,
  }) async {
    print('📸 Comprimiendo ${imageFiles.length} imágenes...');
    
    final compressedFiles = <File>[];
    
    // Comprimir imágenes una por una (más estable que paralelo)
    for (int i = 0; i < imageFiles.length; i++) {
      final file = imageFiles[i];
      print('   Procesando imagen ${i + 1}/${imageFiles.length}...');
      
      final compressedFile = await compressImage(
        file,
        quality: quality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        maxFileSizeKB: maxFileSizeKB,
      );
      
      if (compressedFile != null) {
        compressedFiles.add(compressedFile);
      }
    }
    
    print('✅ Compresión completa: ${compressedFiles.length}/${imageFiles.length} exitosas');
    return compressedFiles;
  }

  /// Estima el tamaño final después de compresión (para mostrar en UI)
  static Future<String> estimateCompressedSize(File imageFile) async {
    try {
      final originalSize = await imageFile.length();
      final originalSizeKB = originalSize / 1024;
      
      if (originalSizeKB <= _maxFileSizeKB) {
        return '${originalSizeKB.toStringAsFixed(1)} KB (sin cambios)';
      }
      
      // Estimación aproximada (70-80% reducción típica)
      final estimatedSizeKB = originalSizeKB * 0.25; // ~75% reducción
      return '~${estimatedSizeKB.toStringAsFixed(1)} KB (estimado)';
      
    } catch (e) {
      return 'Error calculando tamaño';
    }
  }
}