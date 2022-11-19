import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_facade.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;

  AuthBloc(this.authFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    event.map(
      authCheckedRequest: (_) async* {
        final userOption = await authFacade.getSignedInUser();
        yield userOption.fold(() => const AuthState.authenticated(),
            (a) => AuthState.authenticated);
      },
      signOut: (_) async* {
        await authFacade.signOut();
        yield const AuthState.authenticated();
      },
    );
  }
}
