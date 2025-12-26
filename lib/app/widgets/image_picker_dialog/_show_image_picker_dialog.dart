import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iconly/iconly.dart';

import '../../core/core.dart' show DAppColors;
import '../../core/services/image_compression_service.dart';

Future<List<File>?> showImagePickerDialog(
  BuildContext context, {
  bool selectMultiple = false,
  bool compressImages = true, // Compresión automática por defecto
}) async {
  // Primero seleccionar imágenes
  final originalFiles = await showDialog<List<File>?>(
    context: context,
    builder: (popContext) => _ImagePickerDialog(
      onSelect: (value) async {
        final _picker = ImagePicker();
        try {
          List<XFile>? pickedFiles;

          if (value.isCamera) {
            final pickedFile = await _picker.pickImage(source: value.source);
            pickedFiles = pickedFile != null ? [pickedFile] : null;
          } else {
            if (selectMultiple) {
              pickedFiles = await _picker.pickMultiImage();
            } else {
              final pickedFile = await _picker.pickImage(source: value.source);
              pickedFiles = pickedFile != null ? [pickedFile] : null;
            }
          }

          if (pickedFiles != null && popContext.mounted) {
            final files = pickedFiles.map((x) => File(x.path)).toList();
            Navigator.of(popContext).pop(files);
          }
        } catch (_) {
          if (popContext.mounted) Navigator.of(popContext).pop();
        }
      },
    ),
  );

  // Si no se seleccionaron archivos, retornar null
  if (originalFiles == null || originalFiles.isEmpty) {
    return null;
  }

  // Si compresión está deshabilitada, retornar archivos originales
  if (!compressImages) {
    return originalFiles;
  }

  // Comprimir imágenes
  return await _showCompressionDialog(context, originalFiles);
}

/// Muestra dialog de progreso durante compresión
Future<List<File>?> _showCompressionDialog(
  BuildContext context,
  List<File> originalFiles,
) async {
  return await showDialog<List<File>?>(
    context: context,
    barrierDismissible: false, // No cerrar hasta terminar
    builder: (dialogContext) => _CompressionProgressDialog(
      originalFiles: originalFiles,
    ),
  );
}

class _ImagePickerDialog extends StatelessWidget {
  const _ImagePickerDialog({
    // ignore: unused_element_parameter
    super.key,
    required this.onSelect,
  });
  final void Function(_ImagePickerType value) onSelect;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select Option',
                style: _theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              CloseButton(
                style: IconButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
          const SizedBox.square(dimension: 16),

          // Options
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ..._ImagePickerType.values.map(
                (type) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () => onSelect(type),
                      borderRadius: BorderRadius.circular(6),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: type.color?.withValues(alpha: 0.15),
                        ),
                        child: Icon(
                          type.icon,
                          color: type.color,
                        ).fMarginAll(8),
                      ),
                    ),
                    const SizedBox.square(dimension: 4),
                    Text(
                      type.getLabel,
                      style: _theme.textTheme.bodyLarge,
                    ),
                  ],
                ).fMarginSymmetric(horizontal: 12),
              )
            ],
          )
        ],
      ).fMarginLTRB(16, 0, 0, 24),
    );
  }
}

enum _ImagePickerType {
  gallery(
    source: ImageSource.gallery,
    icon: IconlyBold.image,
    color: DAppColors.kPrimary,
  ),
  camera(
    source: ImageSource.camera,
    icon: IconlyBold.camera,
    color: Colors.red,
  );

  final ImageSource source;
  final IconData icon;
  final Color? color;

  String get getLabel {
    return switch (this) {
      _ImagePickerType.gallery => 'Gallery',
      _ImagePickerType.camera => 'Camera',
    };
  }

  bool get isGallery => this == _ImagePickerType.gallery;
  bool get isCamera => this == _ImagePickerType.camera;

  const _ImagePickerType({
    required this.source,
    required this.icon,
    this.color,
  });
}

/// Dialog que muestra progreso de compresión de imágenes
class _CompressionProgressDialog extends StatefulWidget {
  const _CompressionProgressDialog({
    required this.originalFiles,
  });

  final List<File> originalFiles;

  @override
  State<_CompressionProgressDialog> createState() => _CompressionProgressDialogState();
}

class _CompressionProgressDialogState extends State<_CompressionProgressDialog> {
  bool _isCompressing = true;
  int _currentIndex = 0;
  String _currentStatus = 'Preparando compresión...';
  List<File>? _compressedFiles;

  @override
  void initState() {
    super.initState();
    _startCompression();
  }

  Future<void> _startCompression() async {
    try {
      setState(() {
        _currentStatus = 'Comprimiendo imágenes...';
      });

      final compressedFiles = <File>[];

      // Comprimir imágenes una por una
      for (int i = 0; i < widget.originalFiles.length; i++) {
        setState(() {
          _currentIndex = i;
          _currentStatus = 'Comprimiendo imagen ${i + 1} de ${widget.originalFiles.length}...';
        });

        final compressedFile = await ImageCompressionService.compressImage(
          widget.originalFiles[i],
        );

        if (compressedFile != null) {
          compressedFiles.add(compressedFile);
        }

        // Pequeña pausa para mostrar progreso
        await Future.delayed(const Duration(milliseconds: 100));
      }

      setState(() {
        _isCompressing = false;
        _currentStatus = '¡Compresión completada!';
        _compressedFiles = compressedFiles;
      });

      // Auto-cerrar después de mostrar éxito
      await Future.delayed(const Duration(milliseconds: 500));
      if (mounted) {
        Navigator.of(context).pop(_compressedFiles);
      }

    } catch (e) {
      setState(() {
        _isCompressing = false;
        _currentStatus = 'Error en compresión';
      });

      // En caso de error, retornar archivos originales
      await Future.delayed(const Duration(milliseconds: 1000));
      if (mounted) {
        Navigator.of(context).pop(widget.originalFiles);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final progress = widget.originalFiles.isEmpty 
        ? 0.0 
        : (_currentIndex + 1) / widget.originalFiles.length;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icono
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: DAppColors.kPrimary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Icon(
                _isCompressing ? Icons.compress : Icons.check_circle,
                size: 32,
                color: _isCompressing ? DAppColors.kPrimary : Colors.green,
              ),
            ),
            const SizedBox(height: 16),

            // Título
            Text(
              _isCompressing ? 'Optimizando imágenes' : '¡Listo!',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),

            // Estado
            Text(
              _currentStatus,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),

            // Progress bar
            if (_isCompressing) ...[
              LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(DAppColors.kPrimary),
              ),
              const SizedBox(height: 8),
              Text(
                '${(_currentIndex + 1)}/${widget.originalFiles.length}',
                style: theme.textTheme.bodySmall,
              ),
            ] else ...[
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 24,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
