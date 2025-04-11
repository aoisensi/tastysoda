import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/pod/prefs/prefs_bluesky_pod.dart';
import '../entity/bluesky_password_credentials.dart';
import '../entity/bluesky_session.dart';
import '../repo/bluesky/bluesky_repo.dart';
import 'bluesky_auth_password_pod.dart';

final blueskyDidPod = Provider<String>((ref) => throw UnimplementedError());

final blueskyDidsPod = FutureProvider<List<String>>((ref) async {
  final repos = await ref.watch(blueskyRepoMapPod.future);
  final dids = repos.keys.toList();
  dids.sort();
  return dids;
});

final blueskyRepoPod = FutureProvider<BlueskyRepo>((ref) async {
  return (await ref.watch(blueskyRepoMapPod.future))[ref.watch(blueskyDidPod)]!;
}, dependencies: [blueskyDidPod]);

final blueskyRepoFamilyPod =
    FutureProvider.family<BlueskyRepo, BlueskyPasswordCredentials>((
      ref,
      arg,
    ) async {
      final session = await ref.watch(blueskyPasswordSessionPod(arg).future);
      return BlueskyRepo(ref, session.accessJwt);
    });

final blueskyRepoMapPod = FutureProvider<Map<String, BlueskyRepo>>((ref) async {
  final credentials = ref.watch(blueskyCredentialsPasswordPod);
  final repos = {
    for (var e
        in credentials
            .map(
              (c) => (
                ref.watch(blueskyPasswordSessionPod(c)),
                ref.watch(blueskyRepoFamilyPod(c)),
              ),
            )
            .whereType<(AsyncData<BlueskySession>, AsyncData<BlueskyRepo>)>())
      e.$1.value.did: e.$2.value,
  };
  return repos;
});
