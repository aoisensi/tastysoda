import 'package:bluesky/bluesky.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../shared_preferences/bluesky_auth.dart';

final blueskyCurrentDidProvider = Provider<String>(
  (ref) => throw UnimplementedError(),
);

final blueskyProvider = FutureProvider<Bluesky?>(
  (ref) async {
    final did = ref.watch(blueskyCurrentDidProvider);
    return await ref.watch(blueskyFamilyProvider(did).future);
  },
  dependencies: [blueskyCurrentDidProvider],
);

final _blueskyFromCredentialsProvider =
    FutureProvider.family<Bluesky, BlueskyCredentials>((ref, arg) async {
  final session = await createSession(
    identifier: arg.handle,
    password: arg.password,
  );
  return Bluesky.fromSession(session.data);
});

final blueskyCurrentSessionFamilyProvider =
    FutureProvider.family<CurrentSession, Bluesky>(
  (ref, bluesky) async => (await bluesky.server.getSession()).data,
);

final blueskyFamilyProvider = FutureProvider.family<Bluesky?, String>(
  (ref, did) async {
    for (final bluesky in await ref.watch(blueskyListProvider.future)) {
      if (bluesky.$2.did == did) return bluesky.$1;
    }
    return null;
  },
);

final blueskyListProvider =
    FutureProvider<List<(Bluesky, CurrentSession)>>((ref) async {
  final authes = ref.watch(blueskyAuthProvider);
  return Future.wait(authes.map((auth) async {
    final bluesky =
        await ref.watch(_blueskyFromCredentialsProvider(auth).future);
    final cs =
        await ref.watch(blueskyCurrentSessionFamilyProvider(bluesky).future);
    return (bluesky, cs);
  }));
});
