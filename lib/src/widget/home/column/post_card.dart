import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    this.avatar,
    this.handle,
    this.displayName,
    this.timestamp,
    this.text,
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;
  final Widget? avatar;
  final Widget? handle;
  final Widget? displayName;
  final Widget? timestamp;
  final Widget? text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(height: 40.0, width: 40.0, child: avatar),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Align(alignment: Alignment.topLeft, child: handle),
                        Align(alignment: Alignment.topRight, child: timestamp),
                      ],
                    ),
                    Align(alignment: Alignment.bottomLeft, child: displayName),
                  ],
                )
              ],
            ),
            ...(text != null
                ? [
                    const SizedBox(height: 16.0),
                    Align(
                      alignment: Alignment.topLeft,
                      child: text,
                    ),
                  ]
                : []),
          ],
        ),
      ),
    );
  }
}
