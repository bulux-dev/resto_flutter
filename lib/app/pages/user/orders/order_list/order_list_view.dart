import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../../i18n/strings.g.dart';
import '../../../../data/repository/repository.dart';
import '../../../../widgets/widgets.dart';
import '../components/components.dart';

@RoutePage()
class OrderListView extends ConsumerWidget {
  const OrderListView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _theme = Theme.of(context);
    final t = Translations.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        scaffoldKey: scaffoldKey,
        title: Text(t.pages.orderList.title),
      ),
      body: const OrderListWidget(),
      resizeToAvoidBottomInset: false,
    ).unfocusPrimary();
  }
}
