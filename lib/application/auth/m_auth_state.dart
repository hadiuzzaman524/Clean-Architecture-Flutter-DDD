import 'package:freezed_annotation/freezed_annotation.dart';
part 'm_auth_state.freezed.dart';
@freezed
class MAuthState with _$MAuthState {
  const factory MAuthState.initial()= Initial;
  const factory MAuthState.authenticated() = Authenticated;
  const factory MAuthState.unAuthenticated()= UnAuthenticated;
}

