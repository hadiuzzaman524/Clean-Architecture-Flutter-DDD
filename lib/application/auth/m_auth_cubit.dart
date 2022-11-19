import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_facade.dart';
import 'm_auth_state.dart';

@injectable
class MAuthCubit extends Cubit<MAuthState> {
  final IAuthFacade iAuthFacade;

  MAuthCubit(this.iAuthFacade) : super(const MAuthState.initial());

  Future<void> checkAuthentication() async {
    print("Check Authentication..........");
    final userOption = await iAuthFacade.getSignedInUser();
    emit(userOption == null
        ? const MAuthState.authenticated()
        : const MAuthState.unAuthenticated());
  }

  Future<void> signOut() async {
    iAuthFacade.signOut();
    emit(const MAuthState.unAuthenticated());
  }
}
