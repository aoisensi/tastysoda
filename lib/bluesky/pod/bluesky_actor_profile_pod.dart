import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entity/response/bluesky_profile.dart';
import 'bluesky_pod.dart';

final blueskyActorProfilePod = AsyncNotifierProvider.family<
  BlueskyActorProfileNotifier,
  BlueskyProfile,
  String
>(BlueskyActorProfileNotifier.new, dependencies: [blueskyRepoPod]);

class BlueskyActorProfileNotifier
    extends FamilyAsyncNotifier<BlueskyProfile, String> {
  @override
  FutureOr<BlueskyProfile> build(String arg) async {
    final profile = ref.watch(_blueskyCacheActorProfilePod(arg));
    if (profile != null) {
      return profile;
    }
    final bluesky = await ref.watch(blueskyRepoPod.future);
    await bluesky.actor.getProfile(arg);
    return future;
  }

  static String cache(Ref ref, Map<String, dynamic> json) {
    final profile = BlueskyProfile.fromJson(json);
    ref.read(_blueskyCacheActorProfilePod(profile.did).notifier).state =
        profile;
    return profile.did;
  }

  static void cacheAll(Ref ref, List<dynamic> jsons) {
    for (final json in jsons) {
      final profile = BlueskyProfile.fromJson(json);
      ref.read(_blueskyCacheActorProfilePod(profile.did).notifier).state =
          profile;
    }
  }
}

final _blueskyCacheActorProfilePod =
    StateProvider.family<BlueskyProfile?, String>((ref, arg) => null);
