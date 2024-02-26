import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tastysoda/src/provider/bluesky/bluesky.dart';
import 'package:tastysoda/src/provider/bluesky/bluesky_profile.dart';

import '../provider/shared_preferences/bluesky_auth.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final handle = useTextEditingController();
    final password = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Handle',
            ),
            controller: handle,
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
            controller: password,
          ),
          ElevatedButton(
            onPressed: () async {
              ref.read(blueskyAuthProvider.notifier).add(
                    BlueskyCredentials(
                      handle.text,
                      password.text,
                      "bsky.social",
                    ),
                  );
            },
            child: const Text('Login'),
          ),
          _bskySessionsListView(context, ref),
        ],
      ),
    );
  }

  Widget _bskySessionsListView(BuildContext context, WidgetRef ref) {
    switch (ref.watch(blueskyListProvider)) {
      case AsyncData(:final value):
        return ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) {
            return ProviderScope(
              overrides: [
                blueskyCurrentDidProvider
                    .overrideWithValue(value[index].$2.did),
              ],
              child: const _BlueskySelfProfileListItem(),
            );
          },
          shrinkWrap: true,
        );
      case AsyncError(:final error):
        return Text('Error: $error');
      default:
        return const CircularProgressIndicator();
    }
  }
}

class _BlueskySelfProfileListItem extends ConsumerWidget {
  const _BlueskySelfProfileListItem();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final me = ref.watch(blueskyCurrentDidProvider);
    ref.watch(blueskyActorProfileProvider(me).notifier).fetch();

    final profile = ref.watch(blueskyActorProfileProvider(me));
    return switch (profile) {
      AsyncData(:final value) => ListTile(
          title: Text(value.displayName ?? value.handle),
          subtitle: Text('@${value.handle}'),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(value.avatar ?? ''),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              ref.read(blueskyAuthProvider.notifier).remove(value.handle);
            },
          )),
      AsyncError(:final error) => Text('Error: $error'),
      _ => const ListTile(
          leading: CircularProgressIndicator(),
          title: Text('Loading...'),
        ),
    };
  }
}
