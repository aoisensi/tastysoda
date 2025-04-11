import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entity/response/bluesky_profile.dart';
import 'bluesky_pod.dart';

final blueskyProfilePod = AsyncNotifierProvider.family<
  BlueskyProfileNotifier,
  BlueskyProfile,
  String
>(BlueskyProfileNotifier.new, dependencies: [blueskyRepoPod]);

class BlueskyProfileNotifier
    extends FamilyAsyncNotifier<BlueskyProfile, String> {
  @override
  FutureOr<BlueskyProfile> build(String arg) async {
    final profile = ref.watch(_blueskyCacheProfilePod(arg));
    if (profile != null) {
      return profile;
    }
    final bluesky = await ref.watch(blueskyRepoPod.future);
    await bluesky.actor.getProfile(arg);
    return future;
  }

  static void cache(Ref ref, Map<String, dynamic> json) {
    final profile = BlueskyProfile.fromJson(json);
    ref.read(_blueskyCacheProfilePod(profile.did).notifier).state = profile;
  }
}

final _blueskyCacheProfilePod = StateProvider.family<BlueskyProfile?, String>(
  (ref, arg) => null,
);
