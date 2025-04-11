import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as $http;

class ATProtoBaseRepo {
  ATProtoBaseRepo(this.bearer);

  final String bearer;
  final _client = $http.Client();

  Future<$http.Response> get(
    String path, [
    Map<String, dynamic>? params,
  ]) async {
    final uri = Uri.parse(
      'https://bsky.social/xrpc/$path',
    ).replace(queryParameters: params);
    final headers = <String, String>{};
    if (bearer.isNotEmpty) headers['Authorization'] = 'Bearer $bearer';
    final response = await _client.get(uri, headers: headers);

    if (response.statusCode / 100 != 2) {
      throw Exception('Failed to get request: ${response.body}');
    }

    return response;
  }

  Future<$http.Response> post(String path, {Object? body}) async {
    final uri = Uri.parse('https://bsky.social/xrpc/$path');
    final headers = <String, String>{};
    if (bearer.isNotEmpty) headers['Authorization'] = 'Bearer $bearer';
    late final Uint8List raw;
    switch (body) {
      case Map body:
        headers['Content-Type'] = 'application/json';
        raw = utf8.encode(jsonEncode(body));
        break;
      case String body:
        headers['Content-Type'] = 'text/plain; charset=utf-8';
        raw = utf8.encode(body);
        break;
      case Uint8List body:
        raw = body;
        break;
      default:
        throw Exception('Unsupported body type: ${body.runtimeType}');
    }
    final response = await _client.post(uri, headers: headers, body: raw);

    if (response.statusCode / 100 != 2) {
      throw Exception('Failed to post request: ${response.body}');
    }

    return response;
  }
}
