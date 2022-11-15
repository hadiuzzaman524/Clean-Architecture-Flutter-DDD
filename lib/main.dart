import 'package:clean_architecture/application/auth/sign_in/sign_in_form_bloc.dart';
import 'package:clean_architecture/presentation/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection_configuration.dart';

void main() {
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
      home: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: const SignInScreen(),
      ),
    );
  }
}
