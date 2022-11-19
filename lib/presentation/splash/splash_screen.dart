import 'package:clean_architecture/application/auth/m_auth_cubit.dart';
import 'package:clean_architecture/application/auth/m_auth_state.dart';
import 'package:clean_architecture/presentation/auth/sign_in.dart';
import 'package:clean_architecture/presentation/home/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<MAuthCubit, MAuthState>(
        listener: (context, state) {

          state.map(
            initial: (_) {},
            authenticated: (_) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const HomeScreen(),
                ),
              );
            },
            unAuthenticated: (_) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const SignInScreen(),
                ),
              );
            },
          );
        },
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
