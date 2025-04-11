// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluesky_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlueskyProfile {

 String get did; String get handle; String? get displayName; String? get description; String? get avatar; String? get createdAt;
/// Create a copy of BlueskyProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlueskyProfileCopyWith<BlueskyProfile> get copyWith => _$BlueskyProfileCopyWithImpl<BlueskyProfile>(this as BlueskyProfile, _$identity);

  /// Serializes this BlueskyProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlueskyProfile&&(identical(other.did, did) || other.did == did)&&(identical(other.handle, handle) || other.handle == handle)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.description, description) || other.description == description)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,did,handle,displayName,description,avatar,createdAt);

@override
String toString() {
  return 'BlueskyProfile(did: $did, handle: $handle, displayName: $displayName, description: $description, avatar: $avatar, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BlueskyProfileCopyWith<$Res>  {
  factory $BlueskyProfileCopyWith(BlueskyProfile value, $Res Function(BlueskyProfile) _then) = _$BlueskyProfileCopyWithImpl;
@useResult
$Res call({
 String did, String handle, String? displayName, String? description, String? avatar, String? createdAt
});




}
/// @nodoc
class _$BlueskyProfileCopyWithImpl<$Res>
    implements $BlueskyProfileCopyWith<$Res> {
  _$BlueskyProfileCopyWithImpl(this._self, this._then);

  final BlueskyProfile _self;
  final $Res Function(BlueskyProfile) _then;

/// Create a copy of BlueskyProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? did = null,Object? handle = null,Object? displayName = freezed,Object? description = freezed,Object? avatar = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
did: null == did ? _self.did : did // ignore: cast_nullable_to_non_nullable
as String,handle: null == handle ? _self.handle : handle // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BlueskyProfile implements BlueskyProfile {
  const _BlueskyProfile({required this.did, required this.handle, required this.displayName, required this.description, required this.avatar, required this.createdAt});
  factory _BlueskyProfile.fromJson(Map<String, dynamic> json) => _$BlueskyProfileFromJson(json);

@override final  String did;
@override final  String handle;
@override final  String? displayName;
@override final  String? description;
@override final  String? avatar;
@override final  String? createdAt;

/// Create a copy of BlueskyProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlueskyProfileCopyWith<_BlueskyProfile> get copyWith => __$BlueskyProfileCopyWithImpl<_BlueskyProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlueskyProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlueskyProfile&&(identical(other.did, did) || other.did == did)&&(identical(other.handle, handle) || other.handle == handle)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.description, description) || other.description == description)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,did,handle,displayName,description,avatar,createdAt);

@override
String toString() {
  return 'BlueskyProfile(did: $did, handle: $handle, displayName: $displayName, description: $description, avatar: $avatar, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BlueskyProfileCopyWith<$Res> implements $BlueskyProfileCopyWith<$Res> {
  factory _$BlueskyProfileCopyWith(_BlueskyProfile value, $Res Function(_BlueskyProfile) _then) = __$BlueskyProfileCopyWithImpl;
@override @useResult
$Res call({
 String did, String handle, String? displayName, String? description, String? avatar, String? createdAt
});




}
/// @nodoc
class __$BlueskyProfileCopyWithImpl<$Res>
    implements _$BlueskyProfileCopyWith<$Res> {
  __$BlueskyProfileCopyWithImpl(this._self, this._then);

  final _BlueskyProfile _self;
  final $Res Function(_BlueskyProfile) _then;

/// Create a copy of BlueskyProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? did = null,Object? handle = null,Object? displayName = freezed,Object? description = freezed,Object? avatar = freezed,Object? createdAt = freezed,}) {
  return _then(_BlueskyProfile(
did: null == did ? _self.did : did // ignore: cast_nullable_to_non_nullable
as String,handle: null == handle ? _self.handle : handle // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
