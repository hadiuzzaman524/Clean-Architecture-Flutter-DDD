import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part 'user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  factory AppUser({required UniqueId id}) = _AppUser;
}
