import 'package:bluesky/bluesky.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../shared_preferences/bluesky_auth.dart';

final blueskyMyDidProvider = Provider<String>(
  (ref) => throw UnimplementedError(),
);

final blueskySessionProvider = Provider<Bluesky?>((ref) {
  final sessions = ref.watch(blueskySessionsProvider);
  if (!sessions.hasValue) {
    return null;
  }
  return sessions.value![ref.watch(blueskyMyDidProvider)];
}, dependencies: [blueskySessionsProvider, blueskyMyDidProvider]);

final blueskySessionsProvider =
    FutureProvider<Map<String, Bluesky>>((ref) async {
  final sessions = <String, Bluesky>{};
  for (final auth in ref.read(blueskyAuthProvider)) {
    final session = await createSession(
      identifier: auth.handle,
      password: auth.password,
    );
    final bluesky = Bluesky.fromSession(session.data);
    final self = await bluesky.identity.resolveHandle(handle: auth.handle);
    sessions[self.data.did] = bluesky;
  }
  return sessions;
});
