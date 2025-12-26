import 'package:flutter/material.dart';

import '../../core/core.dart';

class CustomNetworkImage extends Image {
  CustomNetworkImage({
    super.key,
    required this.url,
    super.fit,
    super.alignment,
    super.centerSlice,
    super.color,
    super.colorBlendMode,
    super.excludeFromSemantics,
    super.filterQuality,
    super.frameBuilder,
    super.gaplessPlayback,
    super.height,
    super.width,
    super.isAntiAlias,
    super.matchTextDirection,
    super.opacity,
    super.repeat,
    super.semanticLabel,
  }) : super(image: url == null ? _placeholder : NetworkImage(url));
  final String? url;

  @override
  ImageErrorWidgetBuilder? get errorBuilder => _customErrorBuilder;

  @override
  ImageLoadingBuilder? get loadingBuilder => _customLoadingBuilder;

  Widget _customErrorBuilder(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) {
    return Image(image: _placeholder, fit: fit);
  }

  static Widget _customLoadingBuilder(
    BuildContext context,
    Widget child,
    ImageChunkEvent? loadingProgress,
  ) {
    if (loadingProgress == null) {
      return child;
    }
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
            : null,
      ),
    );
  }

  static const _placeholder = AssetImage(DAppImages.emptyImagePlaceholder);
}
