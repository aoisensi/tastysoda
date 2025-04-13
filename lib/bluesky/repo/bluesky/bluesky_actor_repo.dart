part of 'bluesky_repo.dart';

class BlueskyActorRepo {
  BlueskyActorRepo._(this._repo);
  final BlueskyRepo _repo;

  Future<Map<String, dynamic>> getProfile(String did) async {
    final response = await _repo.get('app.bsky.actor.getProfile', {
      'actor': did,
    });
    return jsonDecode(response.body);
  }
}
