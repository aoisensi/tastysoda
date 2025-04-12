import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../bluesky/pod/bluesky_actor_profile_pod.dart';
import '../../../bluesky/pod/bluesky_pod.dart';
import '../../../bluesky/widget/dialog/bluesky_login_dialog.dart';
import '../../../bluesky/widget/view/bluesky_post_profile_view.dart';
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
      body: Center(
        child: ListView.builder(
          itemCount: dids.valueOrNull?.length ?? 0,
          itemBuilder: (_, index) {
            final did = dids.value![index];
            return ProviderScope(
              overrides: [blueskyDidPod.overrideWithValue(did)],
              child: Consumer(
                builder: (context, ref, child) {
                  final value = ref.watch(blueskyProfilePod(did));
                  return ListTile(
                    title: value.when(
                      data: BlueskyPostProfileView.new,
                      error: (error, st) => Text(error.toString()),
                      loading: () => const Text('loading'),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
