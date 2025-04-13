// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluesky_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BlueskyPost {

 String get uri; String get authorDid; String get text; DateTime get createdAt; int get likeCount; int get quoteCount; int get replyCount; int get repostCount; DateTime get indexedAt;
/// Create a copy of BlueskyPost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlueskyPostCopyWith<BlueskyPost> get copyWith => _$BlueskyPostCopyWithImpl<BlueskyPost>(this as BlueskyPost, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlueskyPost&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.authorDid, authorDid) || other.authorDid == authorDid)&&(identical(other.text, text) || other.text == text)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.quoteCount, quoteCount) || other.quoteCount == quoteCount)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.repostCount, repostCount) || other.repostCount == repostCount)&&(identical(other.indexedAt, indexedAt) || other.indexedAt == indexedAt));
}


@override
int get hashCode => Object.hash(runtimeType,uri,authorDid,text,createdAt,likeCount,quoteCount,replyCount,repostCount,indexedAt);

@override
String toString() {
  return 'BlueskyPost(uri: $uri, authorDid: $authorDid, text: $text, createdAt: $createdAt, likeCount: $likeCount, quoteCount: $quoteCount, replyCount: $replyCount, repostCount: $repostCount, indexedAt: $indexedAt)';
}


}

/// @nodoc
abstract mixin class $BlueskyPostCopyWith<$Res>  {
  factory $BlueskyPostCopyWith(BlueskyPost value, $Res Function(BlueskyPost) _then) = _$BlueskyPostCopyWithImpl;
@useResult
$Res call({
 String uri, String authorDid, String text, DateTime createdAt, int likeCount, int quoteCount, int replyCount, int repostCount, DateTime indexedAt
});




}
/// @nodoc
class _$BlueskyPostCopyWithImpl<$Res>
    implements $BlueskyPostCopyWith<$Res> {
  _$BlueskyPostCopyWithImpl(this._self, this._then);

  final BlueskyPost _self;
  final $Res Function(BlueskyPost) _then;

/// Create a copy of BlueskyPost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uri = null,Object? authorDid = null,Object? text = null,Object? createdAt = null,Object? likeCount = null,Object? quoteCount = null,Object? replyCount = null,Object? repostCount = null,Object? indexedAt = null,}) {
  return _then(_self.copyWith(
uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String,authorDid: null == authorDid ? _self.authorDid : authorDid // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,quoteCount: null == quoteCount ? _self.quoteCount : quoteCount // ignore: cast_nullable_to_non_nullable
as int,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,repostCount: null == repostCount ? _self.repostCount : repostCount // ignore: cast_nullable_to_non_nullable
as int,indexedAt: null == indexedAt ? _self.indexedAt : indexedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc


class _BlueskyPost implements BlueskyPost {
  const _BlueskyPost({required this.uri, required this.authorDid, required this.text, required this.createdAt, required this.likeCount, required this.quoteCount, required this.replyCount, required this.repostCount, required this.indexedAt});
  

@override final  String uri;
@override final  String authorDid;
@override final  String text;
@override final  DateTime createdAt;
@override final  int likeCount;
@override final  int quoteCount;
@override final  int replyCount;
@override final  int repostCount;
@override final  DateTime indexedAt;

/// Create a copy of BlueskyPost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlueskyPostCopyWith<_BlueskyPost> get copyWith => __$BlueskyPostCopyWithImpl<_BlueskyPost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlueskyPost&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.authorDid, authorDid) || other.authorDid == authorDid)&&(identical(other.text, text) || other.text == text)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.quoteCount, quoteCount) || other.quoteCount == quoteCount)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.repostCount, repostCount) || other.repostCount == repostCount)&&(identical(other.indexedAt, indexedAt) || other.indexedAt == indexedAt));
}


@override
int get hashCode => Object.hash(runtimeType,uri,authorDid,text,createdAt,likeCount,quoteCount,replyCount,repostCount,indexedAt);

@override
String toString() {
  return 'BlueskyPost(uri: $uri, authorDid: $authorDid, text: $text, createdAt: $createdAt, likeCount: $likeCount, quoteCount: $quoteCount, replyCount: $replyCount, repostCount: $repostCount, indexedAt: $indexedAt)';
}


}

/// @nodoc
abstract mixin class _$BlueskyPostCopyWith<$Res> implements $BlueskyPostCopyWith<$Res> {
  factory _$BlueskyPostCopyWith(_BlueskyPost value, $Res Function(_BlueskyPost) _then) = __$BlueskyPostCopyWithImpl;
@override @useResult
$Res call({
 String uri, String authorDid, String text, DateTime createdAt, int likeCount, int quoteCount, int replyCount, int repostCount, DateTime indexedAt
});




}
/// @nodoc
class __$BlueskyPostCopyWithImpl<$Res>
    implements _$BlueskyPostCopyWith<$Res> {
  __$BlueskyPostCopyWithImpl(this._self, this._then);

  final _BlueskyPost _self;
  final $Res Function(_BlueskyPost) _then;

/// Create a copy of BlueskyPost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uri = null,Object? authorDid = null,Object? text = null,Object? createdAt = null,Object? likeCount = null,Object? quoteCount = null,Object? replyCount = null,Object? repostCount = null,Object? indexedAt = null,}) {
  return _then(_BlueskyPost(
uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String,authorDid: null == authorDid ? _self.authorDid : authorDid // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,quoteCount: null == quoteCount ? _self.quoteCount : quoteCount // ignore: cast_nullable_to_non_nullable
as int,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,repostCount: null == repostCount ? _self.repostCount : repostCount // ignore: cast_nullable_to_non_nullable
as int,indexedAt: null == indexedAt ? _self.indexedAt : indexedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
