import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../pod/time_pod.dart';

class TimeStampView extends ConsumerWidget {
  const TimeStampView({super.key, required this.timestamp});

  final DateTime timestamp;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final duration = ref.watch(nowPod).difference(timestamp);
    if (duration.inDays > 365) {
      return Text('${(duration.inDays / 365).floor()}y');
    } else if (duration.inDays > 0) {
      return Text('${duration.inDays}d');
    } else if (duration.inHours > 0) {
      return Text('${duration.inHours}h');
    } else if (duration.inMinutes > 0) {
      return Text('${duration.inMinutes}m');
    } else if (duration.inSeconds > 0) {
      return Text('${duration.inSeconds}s');
    } else {
      return const Text('now');
    }
  }
}
