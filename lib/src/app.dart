import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Log Me In',
        home: Scaffold(
          body: LoginScreen(),
        ));
  }
}
