import 'package:bluesky/bluesky.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'bluesky_actor.freezed.dart';

final blueskyActorFamilyProvider = NotifierProvider.autoDispose
    .family<BlueskyActorNotifier, AsyncValue<BlueskyActor>, String>(
  BlueskyActorNotifier.new,
);

class BlueskyActorNotifier
    extends AutoDisposeFamilyNotifier<AsyncValue<BlueskyActor>, String> {
  @override
  AsyncValue<BlueskyActor> build(String arg) {
    return const AsyncLoading();
  }

  void putActorBasic(ActorBasic ab) {
    state = AsyncData(BlueskyActor.fromActorBasic(ab));
    ref.keepAlive();
  }
}

@freezed
class BlueskyActor with _$BlueskyActor {
  const factory BlueskyActor({
    required String did,
    required String handle,
    required String displayName,
    required String avatar,
  }) = _BlueskyActor;

  factory BlueskyActor.fromActorBasic(ActorBasic ab) => BlueskyActor(
        did: ab.did,
        handle: ab.handle,
        displayName: ab.displayName ?? ab.handle,
        avatar: ab.avatar ?? '',
      );
}
