part of 'atproto_repo.dart';

class ATProtoServerRepo {
  ATProtoServerRepo._(this._repo);
  final ATProtoRepo _repo;

  // https://docs.bsky.app/docs/api/com-atproto-server-create-session
  Future<Map<String, dynamic>> createSession(
    String identifier,
    String password,
  ) async {
    final response = await _repo.post(
      'com.atproto.server.createSession',
      body: {'identifier': identifier, 'password': password},
    );
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  // https://docs.bsky.app/docs/api/com-atproto-server-refresh-session
  Future<Map<String, dynamic>> refreshSession() async {
    final response = await _repo.post('com.atproto.server.refreshSession');
    return jsonDecode(response.body) as Map<String, dynamic>;
  }
}
