import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';

@RoutePage()
class NotificationDetailsView extends StatelessWidget {
  const NotificationDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        // leadingWidth: 40,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // title.toString(),
              'Your rent is due (Reminder 1)',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            Text(
              // time.toString(),
              '25 Jun 2023 - 11 : 25 PM',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.secondary),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi [Tenant\'s Name]\n\nHope this message finds you well. Just a friendly reminder that your monthly house rental payment is due on [Due Date]. Kindly ensure that the payment is made by this date to avoid any inconvenience.\n\nYou can make the payment through the app, and if you have any questions or need assistance, please feel free to reach out to me.\n\nThank you for your prompt attention to this matter.\n\nBest regards,\nRiead',
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}
