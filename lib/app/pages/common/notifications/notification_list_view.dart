import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

import '../../../core/core.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';

@RoutePage()
class NotificationListView extends StatefulWidget {
  const NotificationListView({super.key});

  @override
  State<NotificationListView> createState() => _NotificationListViewState();
}

class _NotificationListViewState extends State<NotificationListView> {
  final List<Map<String, String>> notificationList = [
    {
      'title': 'Your rent is due (Reminder 1)',
      'time': 'Today - 11:25 PM',
      'description': 'Please read the message',
    },
    {
      'title': 'Your request has been confirmed',
      'time': '25 Jun 2023 - 11:40 PM',
      'description': 'Lorem ipsum dolor sit amet, consectetur adip gravi iscing elit. Ultricies gravida...',
    },
    {
      'title': 'Your request has been confirmed',
      'time': 'Today - 12:25 PM',
      'description': 'Lorem ipsum dolor sit amet, consectetur adip gravi iscing elit. Ultricies gravida...',
    },
    {
      'title': 'Your request has been confirmed',
      'time': 'Today - 3:25 PM',
      'description': 'Lorem ipsum dolor sit amet, consectetur adip gravi iscing elit. Ultricies gravida...',
    },
    {
      'title': 'Your rent is due (Reminder 1)',
      'time': 'Today - 11:25 PM',
      'description': 'Please read the message',
    },
    {
      'title': 'Your request has been confirmed',
      'time': '25 Jun 2023 - 11:40 PM',
      'description': 'Lorem ipsum dolor sit amet, consectetur adip gravi iscing elit. Ultricies gravida...',
    },
    {
      'title': 'Your request has been confirmed',
      'time': 'Today - 12:25 PM',
      'description': 'Lorem ipsum dolor sit amet, consectetur adip gravi iscing elit. Ultricies gravida...',
    },
    {
      'title': 'Your request has been confirmed',
      'time': 'Today - 3:25 PM',
      'description': 'Lorem ipsum dolor sit amet, consectetur adip gravi iscing elit. Ultricies gravida...',
    },
  ];

  void clearAllNotifications() {
    setState(() {
      notificationList.clear(); // Clears all notifications
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: const Text('Notification'), actions: [
        PopupMenuButton(
            onSelected: (value) {
              if (value == 'clear') {
                return clearAllNotifications();
              }
            },
            offset: Offset(0, 40),
            itemBuilder: (context) => [const PopupMenuItem(value: 'clear', child: Text('Clear All'))])
      ]),
      body: notificationList.isEmpty
          ? Center(
              child: Image.asset(
              DAppImages.emptyScreenLogo,
              fit: BoxFit.cover,
            ))
          : ListView.builder(
              padding: EdgeInsets.all(24.0),
              itemCount: notificationList.length,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                final notification = notificationList[index];
                return Column(
                  children: [
                    NotificationWidget(
                      onPressed: () {
                        context.router.push(const NotificationDetailsRoute());
                      },
                      icon: FeatherIcons.bell,
                      title: notification['title']!,
                      time: notification['time']!,
                      description: notification['description']!,
                    ),
                    Divider(
                      thickness: 1.0,
                      color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.15),
                    )
                  ],
                );
              },
            ),
    );
  }
}

///---------------------Notification widget-------------------
class NotificationWidget extends StatelessWidget {
  const NotificationWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.time,
      required this.description,
      required this.onPressed});
  final IconData icon;
  final String title;
  final String time;
  final String description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      isThreeLine: false,
      titleAlignment: ListTileTitleAlignment.top,
      visualDensity: VisualDensity(horizontal: -2, vertical: -4),
      contentPadding: EdgeInsets.zero,
      leading: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
        ),
        child: Icon(
          icon,
          size: 20,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            time,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
          SizedBox.square(
            dimension: 8,
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.secondary),
          )
        ],
      ),
    );
  }
}
