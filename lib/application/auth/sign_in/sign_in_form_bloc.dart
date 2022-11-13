import 'package:clean_architecture/domain/auth/auth_failure.dart';
import 'package:clean_architecture/domain/auth/i_auth_facade.dart';
import 'package:clean_architecture/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_in_form_event.dart';
import 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade authFacade;

  SignInFormBloc(this.authFacade) : super(SignInFormState.initial());

  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
        emailAddress: EmailAddress(e.emailStr),
        authFailureOrSuccessOption: none(),
      );
    }, passwordChanged: (e) async* {
      yield state.copyWith(
        password: Password(e.passwordStr),
        authFailureOrSuccessOption: none(),
      );
    }, registerWithEmailAndPasswordPressed: (e) async* {
      yield* userEntry(authFacade.registerWithEmailAndPassword);
    }, signInWithEmailAndPasswordPressed: (e) async* {
      yield* userEntry(authFacade.signInWithEmailAndPassword);
    }, signInWithGooglePressed: (e) async* {
      // Either<AuthFailure, Unit> authFailureOrSuccess;
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      final authFailureOrSuccess = await authFacade.signInWithGoogle();

      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(authFailureOrSuccess),
      );
    });
  }

  Stream<SignInFormState> userEntry(
      Future<Either<AuthFailure, Unit>> Function(
              {required EmailAddress emailAddress, required Password password})
          passingFunction) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final bool isEmailValid = state.emailAddress.isValid;
    final bool isPasswordValid = state.password.isValid;

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await passingFunction(
        emailAddress: state.emailAddress,
        password: state.password,
      );
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      );
    }
    yield state.copyWith(
      showErrorMessage: true,
      authFailureOrSuccessOption: none(),
    );
  }
}
