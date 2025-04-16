import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowPod = NotifierProvider<NowNotifier, DateTime>(NowNotifier.new);

class NowNotifier extends Notifier<DateTime> {
  @override
  DateTime build() {
    final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state = DateTime.now();
    });
    ref.onDispose(timer.cancel);
    return DateTime.now();
  }
}
