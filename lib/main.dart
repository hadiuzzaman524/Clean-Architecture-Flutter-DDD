import 'package:clean_architecture/application/auth/m_auth_cubit.dart';
import 'package:clean_architecture/application/auth/sign_in/sign_in_form_bloc.dart';
import 'package:clean_architecture/presentation/auth/sign_in.dart';
import 'package:clean_architecture/presentation/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection_configuration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MAuthCubit>(
          create: (context) => getIt()..checkAuthentication(),

        ),
        BlocProvider<SignInFormBloc>(
          create: (context) => getIt(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MultiBlocProvider(
          providers: [
            BlocProvider<MAuthCubit>(
              create: (context) => getIt()..checkAuthentication(),

            ),
            BlocProvider<SignInFormBloc>(
              create: (context) => getIt(),
            ),
          ],
          child: const SplashScreen(),
        ),
      ),
    );
  }
}
