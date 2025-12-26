import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

/// Widget optimizado para mostrar imágenes de productos
/// Usa cache inteligente y lazy loading para mejor rendimiento
class OptimizedProductImage extends StatelessWidget {
  const OptimizedProductImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.placeholder,
    this.errorWidget,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    Widget imageWidget = CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      // Optimizaciones de memoria
      memCacheWidth: width?.round() ?? 400, // Limitar ancho en cache
      memCacheHeight: height?.round() ?? 300, // Limitar alto en cache
      maxWidthDiskCache: 800, // Máximo en disco
      maxHeightDiskCache: 600, // Máximo en disco
      
      // Placeholder mientras carga
      placeholder: (context, url) => placeholder ?? Container(
        width: width,
        height: height,
        color: Colors.grey[200],
        child: const Center(
          child: SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            ),
          ),
        ),
      ),
      
      // Widget de error
      errorWidget: (context, url, error) => errorWidget ?? Container(
        width: width,
        height: height,
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.broken_image_outlined,
              size: 32,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 4),
            Text(
              'Sin imagen',
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );

    // Aplicar border radius si se especifica
    if (borderRadius != null) {
      imageWidget = ClipRRect(
        borderRadius: borderRadius!,
        child: imageWidget,
      );
    }

    return imageWidget;
  }
}

/// Widget optimizado específicamente para listas de productos
/// Usa dimensiones fijas para mejor scrolling performance
class ProductListImage extends StatelessWidget {
  const ProductListImage({
    super.key,
    required this.imageUrl,
    this.size = 60,
  });

  final String imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return OptimizedProductImage(
      imageUrl: imageUrl,
      width: size,
      height: size,
      borderRadius: BorderRadius.circular(8),
      fit: BoxFit.cover,
    );
  }
}

/// Widget optimizado para imágenes de detalle de producto
/// Usa dimensiones más grandes pero controladas
class ProductDetailImage extends StatelessWidget {
  const ProductDetailImage({
    super.key,
    required this.imageUrl,
    this.height = 200,
  });

  final String imageUrl;
  final double height;

  @override
  Widget build(BuildContext context) {
    return OptimizedProductImage(
      imageUrl: imageUrl,
      height: height,
      width: double.infinity,
      borderRadius: BorderRadius.circular(12),
      fit: BoxFit.cover,
    );
  }
}