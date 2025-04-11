import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'bluesky_pod.dart';

final blueskyProfilePod =
    AsyncNotifierProvider.family<BlueskyProfileNotifier, String, String>(
      BlueskyProfileNotifier.new,
      dependencies: [blueskyRepoPod],
    );

class BlueskyProfileNotifier extends FamilyAsyncNotifier<String, String> {
  @override
  FutureOr<String> build(String arg) async {
    final profile = ref.watch(blueskyCacheProfileProvider(arg));
    if (profile != null) {
      return profile;
    }
    final bluesky = await ref.watch(blueskyRepoPod.future);
    await bluesky.actor.getProfile(arg);
    return future;
  }
}

final blueskyCacheProfileProvider = StateProvider.family<String?, String>(
  (ref, arg) => null,
);
