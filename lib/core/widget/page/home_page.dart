import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../bluesky/pod/bluesky_pod.dart';
import '../../../bluesky/widget/activity/bluesky_feed_activity.dart';
import '../../../bluesky/widget/dialog/bluesky_login_dialog.dart';
import '../../pod/prefs/prefs_bluesky_pod.dart';

final isNoLoginAccountPod = Provider((ref) {
  return ref.watch(blueskyCredentialsPasswordPod).isEmpty;
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isNoLoginAccount = ref.watch(isNoLoginAccountPod);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isNoLoginAccount) return;
      showDialog(
        context: context,
        builder: (context) {
          return const BlueskyLoginDialog();
        },
      );
    });
    final dids = ref.watch(blueskyDidsPod);
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Row(
        children: [
          for (final did in dids.valueOrNull ?? [])
            SizedBox(
              width: 360,
              child: ProviderScope(
                overrides: [blueskyDidPod.overrideWithValue(did)],
                child: const BlueskyFeedActivity(),
              ),
            ),
        ],
      ),
    );
  }
}
