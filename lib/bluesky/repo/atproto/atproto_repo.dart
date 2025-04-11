import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'atproto_base_repo.dart';

part 'atproto_server_repo.dart';

class ATProtoRepo extends ATProtoBaseRepo {
  ATProtoRepo(this._ref, super._bearer);

  // ignore: unused_field
  final Ref _ref;

  late final ATProtoServerRepo server = ATProtoServerRepo._(this);
}
