part of 'bluesky_repo.dart';

class BlueskyActorRepo {
  BlueskyActorRepo._(this._repo);
  final BlueskyRepo _repo;

  Future<void> getProfile(String did) async {
    final response = await _repo.get('app.bsky.actor.getProfile', {
      'actor': did,
    });
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    BlueskyProfileNotifier.cache(_repo.ref, json);
  }
}
