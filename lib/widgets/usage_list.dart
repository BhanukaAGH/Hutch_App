import 'package:flutter/material.dart';
import 'package:hutch_app/widgets/usage_bar.dart';

class UsageList extends StatelessWidget {
  const UsageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> usageList = [
      {
        'icon': Icons.wb_sunny_outlined,
        'title': 'Anytime Data',
        'dataUsage': '46.71 MB',
      },
      {
        'icon': Icons.mode_night_outlined,
        'title': 'Night Time Data',
        'dataUsage': '46.71 MB',
      },
      {
        'icon': Icons.access_time_sharp,
        'title': 'Time Based Data',
        'dataUsage': '0 Min',
      },
      {
        'icon': Icons.phone,
        'title': 'Voice On Net',
        'dataUsage': '1750 Min',
      },
      {
        'icon': Icons.phone,
        'title': 'Voice AnyNet',
        'dataUsage': '0 Min',
      },
      {
        'icon': Icons.mail_outline,
        'title': 'SMS',
        'dataUsage': '700 SMS',
      },
    ];

    return Column(
      children: usageList
          .map(
            (item) => Card(
              elevation: 8,
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      item['icon'],
                      size: 32,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item['title'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                item['dataUsage'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(height: 12),
                          UsageBar(),
                          SizedBox(height: 12),
                          const Text(
                            'Click for details',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
