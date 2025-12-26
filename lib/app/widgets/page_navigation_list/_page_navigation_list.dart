import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/core.dart' show SvgImageHolder;

class PageNavigationListView extends StatelessWidget {
  const PageNavigationListView({
    super.key,
    this.header,
    required this.navTiles,
    this.onTap,
  });

  final Widget? header;
  final List<PageNavigationNavTile> navTiles;
  final void Function(PageNavigationNavTile value)? onTap;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return ListView(
      children: [
        // Header
        if (header != null) header!,

        // Nav Items
        Column(
          children: List.generate(
            navTiles.length,
            (index) {
              final _navTile = navTiles[index];

              return DecoratedBox(
                decoration: BoxDecoration(
                  border: BorderDirectional(
                    bottom: Divider.createBorderSide(context),
                  ),
                ),
                child: ListTile(
                  onTap: () => onTap?.call(_navTile),
                  leading: Container(
                    constraints: BoxConstraints.tight(
                      const Size.square(38),
                    ),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: _navTile.svgIconPath?.baseColor?.withValues(
                        alpha: 0.15,
                      ),
                    ),
                    child: SvgPicture.asset(_navTile.svgIconPath!.svgPath),
                  ),
                  title: Text(_navTile.title),
                  titleTextStyle: _theme.textTheme.bodyLarge,
                  trailing: switch (_navTile.type) {
                    PageNavigationListTileType.tool => _navTile.trailing,
                    _ => Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: _theme.colorScheme.outline,
                      ),
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  tileColor: _theme.colorScheme.primaryContainer,
                  contentPadding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  visualDensity: const VisualDensity(vertical: -2),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class PageNavigationNavTile<T> {
  final String title;
  final Widget? trailing;
  final Color? color;
  final SvgImageHolder? svgIconPath;
  final PageNavigationListTileType type;
  final PageRouteInfo<dynamic>? route;
  final T? value;

  const PageNavigationNavTile({
    required this.title,
    this.trailing,
    this.color,
    this.svgIconPath,
    this.type = PageNavigationListTileType.navigation,
    this.route,
    this.value,
  }) : assert(
          type != PageNavigationListTileType.navigation || value == null,
          'value cannot be assigned in navigation type',
        );
}

enum PageNavigationListTileType { navigation, tool, function }
