import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tastysoda/src/provider/shared_preferences/shared_preferences.dart';

final blueskyAuthProvider =
    NotifierProvider<BlueskyAuthNotifier, List<BlueskyCredentials>>(
        BlueskyAuthNotifier.new);

class BlueskyAuthNotifier
    extends SharedPreferencesNotifier<List<BlueskyCredentials>, List<String>> {
  BlueskyAuthNotifier() : super('bluesky_auth');

  @override
  List<BlueskyCredentials> decode(List<String>? value) => (value ?? [])
      .map((v) => BlueskyCredentials.fromJson(json.decode(v)))
      .toList();

  @override
  List<String> encode(List<BlueskyCredentials> state) =>
      state.map((s) => json.encode(s.toJson())).toList();

  void add(BlueskyCredentials credentials) {
    state = [...state, credentials];
  }

  void remove(String handle) {
    state = state.where((c) => c.handle != handle).toList();
  }
}

class BlueskyCredentials {
  BlueskyCredentials(this.handle, this.password, this.domain);
  final String handle;
  final String password;
  final String domain;

  Map<String, dynamic> toJson() {
    return {
      'handle': handle,
      'password': password,
      'domain': domain,
    };
  }

  factory BlueskyCredentials.fromJson(Map<String, dynamic> json) =>
      BlueskyCredentials(
        json['handle'] as String,
        json['password'] as String,
        json['domain'] as String,
      );
}
