import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/pod/prefs/prefs_bluesky_pod.dart';
import '../../entity/bluesky_password_credentials.dart';

class BlueskyLoginDialog extends HookConsumerWidget {
  const BlueskyLoginDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final handle = useState('');
    final password = useState('');

    return AlertDialog(
      title: const Text('Login to Bluesky'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Handle or Email'),
            onChanged: (value) => handle.value = value,
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'App Password'),
            obscureText: true,
            onChanged: (value) => password.value = value,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () async {
            if (handle.value.isEmpty || password.value.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Please fill in all fields')),
              );
              return;
            }
            await _loginWithPassword(ref, handle.value, password.value);
            if (!context.mounted) return;
            Navigator.of(context).pop();
          },
          child: const Text('Login'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }

  Future<void> _loginWithPassword(
    WidgetRef ref,
    String handle,
    String password,
  ) async {
    final credentials = BlueskyPasswordCredentials(
      identifier: handle,
      password: password,
    );
    ref.read(blueskyCredentialsPasswordPod.notifier).add(credentials);
  }
}
