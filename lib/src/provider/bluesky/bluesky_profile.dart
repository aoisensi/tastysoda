import 'dart:async';

import 'package:bluesky/bluesky.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tastysoda/src/provider/bluesky/bluesky.dart';

final blueskyActorProfileProvider = AsyncNotifierProvider.autoDispose
    .family<BlueskyActorProfileNotifier, ActorProfile, String>(
  BlueskyActorProfileNotifier.new,
  dependencies: [blueskySessionProvider],
);

class BlueskyActorProfileNotifier
    extends AutoDisposeFamilyAsyncNotifier<ActorProfile, String> {
  @override
  FutureOr<ActorProfile> build(arg) {
    return future;
  }

  Future<void> fetch() async {
    final session = ref.read(blueskySessionProvider);
    if (session == null) return;
    state = AsyncData((await session.actor.getProfile(actor: arg)).data);
  }
}
