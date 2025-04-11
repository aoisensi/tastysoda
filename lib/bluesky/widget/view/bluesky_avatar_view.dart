import 'package:flutter/material.dart';

import '../../entity/response/bluesky_profile.dart';

class BlueskyAvatarView extends StatelessWidget {
  final BlueskyProfile profile;

  const BlueskyAvatarView({super.key, required this.profile});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage:
          profile.avatar == null ? null : NetworkImage(profile.avatar!),
    );
  }
}
