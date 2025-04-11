// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluesky_password_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlueskyPasswordCredentials {

 String get identifier; String get password;
/// Create a copy of BlueskyPasswordCredentials
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlueskyPasswordCredentialsCopyWith<BlueskyPasswordCredentials> get copyWith => _$BlueskyPasswordCredentialsCopyWithImpl<BlueskyPasswordCredentials>(this as BlueskyPasswordCredentials, _$identity);

  /// Serializes this BlueskyPasswordCredentials to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlueskyPasswordCredentials&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,identifier,password);

@override
String toString() {
  return 'BlueskyPasswordCredentials(identifier: $identifier, password: $password)';
}


}

/// @nodoc
abstract mixin class $BlueskyPasswordCredentialsCopyWith<$Res>  {
  factory $BlueskyPasswordCredentialsCopyWith(BlueskyPasswordCredentials value, $Res Function(BlueskyPasswordCredentials) _then) = _$BlueskyPasswordCredentialsCopyWithImpl;
@useResult
$Res call({
 String identifier, String password
});




}
/// @nodoc
class _$BlueskyPasswordCredentialsCopyWithImpl<$Res>
    implements $BlueskyPasswordCredentialsCopyWith<$Res> {
  _$BlueskyPasswordCredentialsCopyWithImpl(this._self, this._then);

  final BlueskyPasswordCredentials _self;
  final $Res Function(BlueskyPasswordCredentials) _then;

/// Create a copy of BlueskyPasswordCredentials
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? identifier = null,Object? password = null,}) {
  return _then(_self.copyWith(
identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BlueskyPasswordCredentials implements BlueskyPasswordCredentials {
  const _BlueskyPasswordCredentials({required this.identifier, required this.password});
  factory _BlueskyPasswordCredentials.fromJson(Map<String, dynamic> json) => _$BlueskyPasswordCredentialsFromJson(json);

@override final  String identifier;
@override final  String password;

/// Create a copy of BlueskyPasswordCredentials
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlueskyPasswordCredentialsCopyWith<_BlueskyPasswordCredentials> get copyWith => __$BlueskyPasswordCredentialsCopyWithImpl<_BlueskyPasswordCredentials>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlueskyPasswordCredentialsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlueskyPasswordCredentials&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,identifier,password);

@override
String toString() {
  return 'BlueskyPasswordCredentials(identifier: $identifier, password: $password)';
}


}

/// @nodoc
abstract mixin class _$BlueskyPasswordCredentialsCopyWith<$Res> implements $BlueskyPasswordCredentialsCopyWith<$Res> {
  factory _$BlueskyPasswordCredentialsCopyWith(_BlueskyPasswordCredentials value, $Res Function(_BlueskyPasswordCredentials) _then) = __$BlueskyPasswordCredentialsCopyWithImpl;
@override @useResult
$Res call({
 String identifier, String password
});




}
/// @nodoc
class __$BlueskyPasswordCredentialsCopyWithImpl<$Res>
    implements _$BlueskyPasswordCredentialsCopyWith<$Res> {
  __$BlueskyPasswordCredentialsCopyWithImpl(this._self, this._then);

  final _BlueskyPasswordCredentials _self;
  final $Res Function(_BlueskyPasswordCredentials) _then;

/// Create a copy of BlueskyPasswordCredentials
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? identifier = null,Object? password = null,}) {
  return _then(_BlueskyPasswordCredentials(
identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
