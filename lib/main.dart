import 'package:clean_architecture/application/auth/auth_bloc.dart';
import 'package:clean_architecture/application/auth/auth_event.dart';
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
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SignInFormBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<AuthBloc>()
              ..add(
                const AuthEvent.authCheckedRequest(),
              ),
          ),
        ],
        child: const SplashScreen(),
      ),
    );
  }
}
