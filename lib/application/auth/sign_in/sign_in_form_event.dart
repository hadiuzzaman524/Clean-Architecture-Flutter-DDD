import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_form_event.freezed.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent{
  const factory SignInFormEvent.emailChanged()= EmailChanged;
  const factory SignInFormEvent.passwordChanged()= PasswordChanged;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed()= RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed()= SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed()=SignInWithGooglePressed;
}