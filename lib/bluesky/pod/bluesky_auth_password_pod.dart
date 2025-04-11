import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entity/bluesky_password_credentials.dart';
import '../entity/bluesky_session.dart';
import '../repo/atproto/atproto_repo.dart';

final blueskyPasswordSessionPod = AsyncNotifierProvider.family(
  BlueskyPasswordSessionNotifier.new,
);

class BlueskyPasswordSessionNotifier
    extends FamilyAsyncNotifier<BlueskySession, BlueskyPasswordCredentials> {
  Timer? _refreshTimer;

  @override
  FutureOr<BlueskySession> build(BlueskyPasswordCredentials arg) async {
    final atp = ATProtoRepo(ref, '');
    final json = await atp.server.createSession(arg.identifier, arg.password);

    return _parseSession(json);
  }

  BlueskySession _parseSession(Map<String, dynamic> json) {
    final session = BlueskySession.fromJson(json);
    final jwt =
        jsonDecode(utf8.decode(base64Decode(session.accessJwt.split('.')[1])))
            as Map<String, dynamic>;
    final exp = DateTime.fromMillisecondsSinceEpoch(
      (jwt['exp'] as int) * 1000,
      isUtc: true,
    );
    _startRefreshTimer(exp, session.refreshJwt);
    ref.onDispose(() => _refreshTimer?.cancel());
    return session;
  }

  void _startRefreshTimer(DateTime exp, String refreshJwt) {
    final duration = exp.difference(DateTime.now());
    _refreshTimer = Timer(duration, () async {
      state = const AsyncValue.loading();
      final atp = ATProtoRepo(ref, refreshJwt);
      final session = await atp.server.refreshSession();
      state = AsyncValue.data(_parseSession(session));
    });
  }
}
