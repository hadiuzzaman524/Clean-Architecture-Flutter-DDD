import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_in_form_event.dart';
import 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc() : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) async* {

  }

}
