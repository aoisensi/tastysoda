import 'package:flutter/material.dart';

abstract class PostProfileView extends StatelessWidget {
  final Widget avatar;
  final String name;
  final String id;

  const PostProfileView({
    super.key,
    required this.avatar,
    required this.name,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Row(
        children: [
          avatar,
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                id,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).textTheme.labelSmall?.color,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
