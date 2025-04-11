import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../bluesky/entity/bluesky_password_credentials.dart';
import 'prefs_pod.dart';

final blueskyCredentialsPasswordPod = NotifierProvider(
  _BlueskyCredentialsPasswordNotifier.new,
);

class _BlueskyCredentialsPasswordNotifier
    extends
        EncodablePrefsNotifier<List<BlueskyPasswordCredentials>, List<String>> {
  _BlueskyCredentialsPasswordNotifier() : super('credentials_bluesky_password');

  @override
  List<BlueskyPasswordCredentials> decode(List<String>? state) {
    if (state == null) return [];
    return state
        .map((e) => BlueskyPasswordCredentials.fromJson(jsonDecode(e)))
        .toList(growable: false);
  }

  @override
  List<String>? encode(List<BlueskyPasswordCredentials> state) {
    return state.map((e) => jsonEncode(e.toJson())).toList(growable: false);
  }

  Future<void> add(BlueskyPasswordCredentials credentials) async {
    state = [...state, credentials];
  }
}
