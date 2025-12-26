import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

class BottomModalSheetWrapper extends StatelessWidget {
  const BottomModalSheetWrapper({
    super.key,
    required this.title,
    required this.child,
    this.action,
  });

  final TextSpan title;
  final Widget child;
  final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: _theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [...?action],
              ),
            ),
            const CloseButton(),
          ],
        ).fMarginLTRB(16, 0, 4, 0),
        const Divider(thickness: 1.2, height: 0),
        Flexible(child: child),
      ],
    );
  }
}

class BadgeExt extends Badge {
  BadgeExt.count({
    super.key,
    super.backgroundColor,
    super.textColor,
    super.smallSize,
    super.largeSize,
    super.textStyle,
    super.padding,
    super.alignment,
    super.offset,
    required int count,
    int maxCount = 999,
    super.isLabelVisible = true,
    super.child,
  }) : super(label: Text(count > maxCount ? '$maxCount+' : '$count'));
}
