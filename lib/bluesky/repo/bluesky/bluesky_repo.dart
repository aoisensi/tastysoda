import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../atproto/atproto_base_repo.dart';

part 'bluesky_actor_repo.dart';
part 'bluesky_feed_repo.dart';

class BlueskyRepo extends ATProtoBaseRepo {
  BlueskyRepo(this.ref, super._client);

  final Ref ref;

  late final actor = BlueskyActorRepo._(this);
  late final feed = BlueskyFeedRepo._(this);
}
