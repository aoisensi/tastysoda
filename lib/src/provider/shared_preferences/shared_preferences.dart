import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

abstract class SharedPreferencesNotifier<S, V> extends Notifier<S> {
  SharedPreferencesNotifier(this.key);

  final String key;
  late final _sp = ref.read(sharedPreferencesProvider);

  V encode(S state);
  S decode(V? value);

  @override
  S build() {
    switch (_sp.get(key)) {
      case null:
        return decode(null);
      case bool value:
        return decode(value as V);
      case double value:
        return decode(value as V);
      case int value:
        return decode(value as V);
      case String value:
        return decode(value as V);
      case List<dynamic> value:
        return decode(value.map((e) => e as String).toList() as V);
      default:
        throw UnsupportedError('Unsupported type');
    }
  }

  @override
  set state(S state) {
    super.state = state;
    final value = encode(state);
    switch (value) {
      case bool value:
        _sp.setBool(key, value);
        break;
      case double value:
        _sp.setDouble(key, value);
        break;
      case int value:
        _sp.setInt(key, value);
        break;
      case String value:
        _sp.setString(key, value);
        break;
      case List<String> value:
        _sp.setStringList(key, value);
        break;
      default:
        throw UnsupportedError('Unsupported type: ${value.runtimeType}');
    }
  }
}
