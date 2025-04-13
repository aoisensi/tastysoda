part of 'bluesky_repo.dart';

class BlueskyFeedRepo {
  BlueskyFeedRepo._(this._repo);
  final BlueskyRepo _repo;

  Future<Map<String, dynamic>> getFeed(String feed) async {
    final response = await _repo.get('app.bsky.feed.getFeed', {
      'feed': feed,
      'limit': '100',
    });
    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> getTimeline() async {
    final response = await _repo.get('app.bsky.feed.getTimeline', {
      'limit': '100',
    });
    return jsonDecode(response.body);
  }
}
