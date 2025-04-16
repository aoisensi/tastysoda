import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'timestamp_view.dart';

class PostProfileView extends StatelessWidget {
  final Widget avatar;
  final String name;
  final String id;
  final DateTime? timestamp;

  const PostProfileView({
    super.key,
    required this.avatar,
    required this.name,
    required this.id,
    this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          avatar,
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (timestamp != null) TimeStampView(timestamp: timestamp!),
                ],
              ),
              Text(
                id,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).textTheme.labelSmall?.color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
