import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(margin: const EdgeInsets.only(top: 25)),
          submitButton()
        ],
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'you@example.com',
              labelText: 'Email',
              errorText: snapshot.hasError ? snapshot.error.toString() : null,
            ),
          );
        });
  }

  Widget passwordField() {
    return const TextField(
      // obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.blue),
      onPressed: () {},
      child: const Text('Login'),
    );
  }
}
