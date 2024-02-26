// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluesky_actor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlueskyActor {
  String get did => throw _privateConstructorUsedError;
  String get handle => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlueskyActorCopyWith<BlueskyActor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlueskyActorCopyWith<$Res> {
  factory $BlueskyActorCopyWith(
          BlueskyActor value, $Res Function(BlueskyActor) then) =
      _$BlueskyActorCopyWithImpl<$Res, BlueskyActor>;
  @useResult
  $Res call({String did, String handle, String displayName, String avatar});
}

/// @nodoc
class _$BlueskyActorCopyWithImpl<$Res, $Val extends BlueskyActor>
    implements $BlueskyActorCopyWith<$Res> {
  _$BlueskyActorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? did = null,
    Object? handle = null,
    Object? displayName = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      did: null == did
          ? _value.did
          : did // ignore: cast_nullable_to_non_nullable
              as String,
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlueskyActorImplCopyWith<$Res>
    implements $BlueskyActorCopyWith<$Res> {
  factory _$$BlueskyActorImplCopyWith(
          _$BlueskyActorImpl value, $Res Function(_$BlueskyActorImpl) then) =
      __$$BlueskyActorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String did, String handle, String displayName, String avatar});
}

/// @nodoc
class __$$BlueskyActorImplCopyWithImpl<$Res>
    extends _$BlueskyActorCopyWithImpl<$Res, _$BlueskyActorImpl>
    implements _$$BlueskyActorImplCopyWith<$Res> {
  __$$BlueskyActorImplCopyWithImpl(
      _$BlueskyActorImpl _value, $Res Function(_$BlueskyActorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? did = null,
    Object? handle = null,
    Object? displayName = null,
    Object? avatar = null,
  }) {
    return _then(_$BlueskyActorImpl(
      did: null == did
          ? _value.did
          : did // ignore: cast_nullable_to_non_nullable
              as String,
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlueskyActorImpl implements _BlueskyActor {
  const _$BlueskyActorImpl(
      {required this.did,
      required this.handle,
      required this.displayName,
      required this.avatar});

  @override
  final String did;
  @override
  final String handle;
  @override
  final String displayName;
  @override
  final String avatar;

  @override
  String toString() {
    return 'BlueskyActor(did: $did, handle: $handle, displayName: $displayName, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlueskyActorImpl &&
            (identical(other.did, did) || other.did == did) &&
            (identical(other.handle, handle) || other.handle == handle) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, did, handle, displayName, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlueskyActorImplCopyWith<_$BlueskyActorImpl> get copyWith =>
      __$$BlueskyActorImplCopyWithImpl<_$BlueskyActorImpl>(this, _$identity);
}

abstract class _BlueskyActor implements BlueskyActor {
  const factory _BlueskyActor(
      {required final String did,
      required final String handle,
      required final String displayName,
      required final String avatar}) = _$BlueskyActorImpl;

  @override
  String get did;
  @override
  String get handle;
  @override
  String get displayName;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$BlueskyActorImplCopyWith<_$BlueskyActorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
