import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tastysoda/src/provider/bluesky/bluesky.dart';
import 'package:tastysoda/src/widget/home/column/bluesky/bluesky_timeline_column.dart';
import 'package:tastysoda/src/widget/settings_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final blueskies = ref.watch(blueskyListProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tasty Soda'),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ));
              },
            ),
          ],
        ),
        body: Builder(builder: (context) {
          switch (blueskies) {
            case AsyncData(:final value):
              if (value.isEmpty) {
                return const Center(child: Text('No blueskies'));
              }
              final did = value.first.$2.did;
              return ProviderScope(
                overrides: [blueskyCurrentDidProvider.overrideWithValue(did)],
                child: const BlueskyTimelineColumn(),
              );
            case AsyncError(:final error):
              return Center(child: Text('Error: $error'));
            default:
              return const Center(child: CircularProgressIndicator());
          }
        }));
  }
}
