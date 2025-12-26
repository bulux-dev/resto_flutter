part of 'quick_order_view.dart';

class BottomActionBuilder extends ConsumerWidget {
  const BottomActionBuilder({
    super.key,
    this.onDetails,
    this.onKOT,
    this.onPayment,
  });
  final VoidCallback? onDetails;
  final VoidCallback? onKOT;
  final VoidCallback? onPayment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderCartProvider = ref.watch(quickOrderCartProvider);

    final t = Translations.of(context);

    return BottomNavWrapper(
      child: Row(
        children: [
          // Details Button
          Expanded(
            child: SizedBox.expand(
              child: OutlinedButton(
                onPressed: onDetails,
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  side: onDetails == null ? Divider.createBorderSide(context) : null,
                ),
                // child: const Text('Details'),
                child: Text(t.common.details),
              ),
            ),
          ),
          const SizedBox.square(dimension: 8),

          // KOT Button
          Expanded(
            child: SizedBox.expand(
              child: OutlinedButton(
                onPressed: onKOT,
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  side: onKOT == null ? Divider.createBorderSide(context) : null,
                ),
                // child: const Text('KOT'),
                child: Text(t.common.kot),
              ),
            ),
          ),
          const SizedBox.square(dimension: 8),

          // Payment Button
          Expanded(
            flex: 3,
            child: ItemCartWidget.totalButton(
              onPressed: onPayment,
              // buttonText: 'Pay',
              buttonText: t.common.pay,
              totalAmount: orderCartProvider.cartAmountOverview.totalAmount,
              totalQuantity: orderCartProvider.cartAmountOverview.totalQuantity,
              showTrailing: false,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
