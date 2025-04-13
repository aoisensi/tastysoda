sealed class BlueskyPostReason {
  final String uri;

  const BlueskyPostReason(this.uri);

  factory BlueskyPostReason.fromJson(Map<String, dynamic> json) {
    if (!json.containsKey('reason') || json['reason'] == null) {
      return BlueskyPostReasonPost(json['post']['uri'] as String);
    }
    final type = json['reason']['\$type'] as String;
    switch (type) {
      case 'app.bsky.embed.record#reasonPin':
        return BlueskyPostReasonPin(json['post']['uri'] as String);
      case 'app.bsky.feed.defs#reasonRepost':
        return BlueskyPostReasonRepost(
          json['post']['uri'] as String,
          (json['reason']['by']['handle'] as String),
          DateTime.parse(json['reason']['indexedAt'] as String),
        );
      default:
        throw Exception('Unknown reason type: $type');
    }
  }

  @override
  bool operator ==(Object other) {
    return other is BlueskyPostReason && other.uri == uri;
  }

  @override
  int get hashCode => uri.hashCode;
}

class BlueskyPostReasonPost extends BlueskyPostReason {
  const BlueskyPostReasonPost(super.uri);

  @override
  bool operator ==(Object other) {
    return other is BlueskyPostReasonPost && other.uri == uri;
  }

  @override
  int get hashCode => uri.hashCode;
}

class BlueskyPostReasonPin extends BlueskyPostReason {
  const BlueskyPostReasonPin(super.uri);

  @override
  bool operator ==(Object other) {
    return other is BlueskyPostReasonPin && other.uri == uri;
  }

  @override
  int get hashCode => uri.hashCode;
}

class BlueskyPostReasonRepost extends BlueskyPostReason {
  final String by;
  final DateTime indexedAt;

  const BlueskyPostReasonRepost(super.uri, this.by, this.indexedAt);

  @override
  bool operator ==(Object other) {
    return other is BlueskyPostReasonRepost &&
        other.uri == uri &&
        other.by == by &&
        other.indexedAt == indexedAt;
  }

  @override
  int get hashCode => Object.hash(uri, by, indexedAt);
}
