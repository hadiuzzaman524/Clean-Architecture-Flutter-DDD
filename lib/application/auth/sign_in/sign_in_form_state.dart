import 'package:clean_architecture/domain/auth/auth_failure.dart';
import 'package:clean_architecture/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_form_state.freezed.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessage,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
      emailAddress: EmailAddress(""),
      password: Password(""),
      showErrorMessage: false,
      isSubmitting: false,
      authFailureOrSuccessOption: none());
}
