import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../pod/bluesky_feed_pod.dart';
import '../view/bluesky_post_view.dart';

class BlueskyFeedActivity extends ConsumerWidget {
  const BlueskyFeedActivity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (ref.watch(blueskyFeedTimelinePod)) {
      case AsyncData(:final value):
        return ListView.builder(
          itemBuilder: (context, index) {
            final reason = value[index];
            return Card(child: BlueskyPostView(reason));
          },
          itemCount: value.length,
        );
      case AsyncError(:final error):
        return Center(child: Text(error.toString()));
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      default:
        return const Center(child: Text('Unknown state'));
    }
  }
}
