// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluesky_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlueskySession {

 String get handle; String get did; String get accessJwt; String get refreshJwt;
/// Create a copy of BlueskySession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlueskySessionCopyWith<BlueskySession> get copyWith => _$BlueskySessionCopyWithImpl<BlueskySession>(this as BlueskySession, _$identity);

  /// Serializes this BlueskySession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlueskySession&&(identical(other.handle, handle) || other.handle == handle)&&(identical(other.did, did) || other.did == did)&&(identical(other.accessJwt, accessJwt) || other.accessJwt == accessJwt)&&(identical(other.refreshJwt, refreshJwt) || other.refreshJwt == refreshJwt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,handle,did,accessJwt,refreshJwt);

@override
String toString() {
  return 'BlueskySession(handle: $handle, did: $did, accessJwt: $accessJwt, refreshJwt: $refreshJwt)';
}


}

/// @nodoc
abstract mixin class $BlueskySessionCopyWith<$Res>  {
  factory $BlueskySessionCopyWith(BlueskySession value, $Res Function(BlueskySession) _then) = _$BlueskySessionCopyWithImpl;
@useResult
$Res call({
 String handle, String did, String accessJwt, String refreshJwt
});




}
/// @nodoc
class _$BlueskySessionCopyWithImpl<$Res>
    implements $BlueskySessionCopyWith<$Res> {
  _$BlueskySessionCopyWithImpl(this._self, this._then);

  final BlueskySession _self;
  final $Res Function(BlueskySession) _then;

/// Create a copy of BlueskySession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? handle = null,Object? did = null,Object? accessJwt = null,Object? refreshJwt = null,}) {
  return _then(_self.copyWith(
handle: null == handle ? _self.handle : handle // ignore: cast_nullable_to_non_nullable
as String,did: null == did ? _self.did : did // ignore: cast_nullable_to_non_nullable
as String,accessJwt: null == accessJwt ? _self.accessJwt : accessJwt // ignore: cast_nullable_to_non_nullable
as String,refreshJwt: null == refreshJwt ? _self.refreshJwt : refreshJwt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BlueskySession implements BlueskySession {
  const _BlueskySession({required this.handle, required this.did, required this.accessJwt, required this.refreshJwt});
  factory _BlueskySession.fromJson(Map<String, dynamic> json) => _$BlueskySessionFromJson(json);

@override final  String handle;
@override final  String did;
@override final  String accessJwt;
@override final  String refreshJwt;

/// Create a copy of BlueskySession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlueskySessionCopyWith<_BlueskySession> get copyWith => __$BlueskySessionCopyWithImpl<_BlueskySession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlueskySessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlueskySession&&(identical(other.handle, handle) || other.handle == handle)&&(identical(other.did, did) || other.did == did)&&(identical(other.accessJwt, accessJwt) || other.accessJwt == accessJwt)&&(identical(other.refreshJwt, refreshJwt) || other.refreshJwt == refreshJwt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,handle,did,accessJwt,refreshJwt);

@override
String toString() {
  return 'BlueskySession(handle: $handle, did: $did, accessJwt: $accessJwt, refreshJwt: $refreshJwt)';
}


}

/// @nodoc
abstract mixin class _$BlueskySessionCopyWith<$Res> implements $BlueskySessionCopyWith<$Res> {
  factory _$BlueskySessionCopyWith(_BlueskySession value, $Res Function(_BlueskySession) _then) = __$BlueskySessionCopyWithImpl;
@override @useResult
$Res call({
 String handle, String did, String accessJwt, String refreshJwt
});




}
/// @nodoc
class __$BlueskySessionCopyWithImpl<$Res>
    implements _$BlueskySessionCopyWith<$Res> {
  __$BlueskySessionCopyWithImpl(this._self, this._then);

  final _BlueskySession _self;
  final $Res Function(_BlueskySession) _then;

/// Create a copy of BlueskySession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? handle = null,Object? did = null,Object? accessJwt = null,Object? refreshJwt = null,}) {
  return _then(_BlueskySession(
handle: null == handle ? _self.handle : handle // ignore: cast_nullable_to_non_nullable
as String,did: null == did ? _self.did : did // ignore: cast_nullable_to_non_nullable
as String,accessJwt: null == accessJwt ? _self.accessJwt : accessJwt // ignore: cast_nullable_to_non_nullable
as String,refreshJwt: null == refreshJwt ? _self.refreshJwt : refreshJwt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
