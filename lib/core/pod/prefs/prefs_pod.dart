import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final prefsPod = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError(),
);

abstract class EncodablePrefsNotifier<S, V> extends Notifier<S> {
  EncodablePrefsNotifier(this.key);

  final String key;

  late final SharedPreferences _sp;

  @override
  S build() {
    _sp = ref.watch(prefsPod);
    switch (V) {
      case const (String):
        return decode(_sp.getString(key) as V?);
      case const (int):
        return decode(_sp.getInt(key) as V?);
      case const (double):
        return decode(_sp.getDouble(key) as V?);
      case const (bool):
        return decode(_sp.getBool(key) as V?);
      case const (List<String>):
        return decode(_sp.getStringList(key) as V?);
      default:
        throw Exception('Unsupported type: ${S.runtimeType}');
    }
  }

  @override
  set state(S s) {
    super.state = s;
    if (s == null) {
      _sp.remove(key);
      return;
    }
    switch (V) {
      case const (String):
        _sp.setString(key, encode(s) as String);
        break;
      case const (int):
        _sp.setInt(key, encode(s) as int);
        break;
      case const (double):
        _sp.setDouble(key, encode(s) as double);
        break;
      case const (bool):
        _sp.setBool(key, encode(s) as bool);
        break;
      case const (List<String>):
        _sp.setStringList(key, encode(s) as List<String>);
        break;
      default:
        throw Exception('Unsupported type: ${S.runtimeType}');
    }
  }

  V? encode(S s);
  S decode(V? v);
}

class PrefsNotifier<S> extends EncodablePrefsNotifier<S, S> {
  PrefsNotifier(super.key, this.initial);

  final S initial;

  @override
  S? encode(S state) => state;

  @override
  S decode(S? state) => state ?? initial;
}
