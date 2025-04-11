import '../../../core/widget/view/post_profile_view.dart';
import '../../entity/response/bluesky_profile.dart';
import 'bluesky_avatar_view.dart';

class BlueskyPostProfileView extends PostProfileView {
  BlueskyPostProfileView(BlueskyProfile profile, {super.key})
    : super(
        avatar: BlueskyAvatarView(profile: profile),
        name: profile.displayName ?? '@${profile.handle}',
        id: '@${profile.handle}',
      );
}
