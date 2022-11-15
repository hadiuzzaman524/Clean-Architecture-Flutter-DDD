import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "📝",
                style: TextStyle(fontSize: 70),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 100,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  label: Text("Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    label: Text("Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    )),
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Login"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Register"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Log In With Google"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
