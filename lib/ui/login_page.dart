import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required String title}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameCont = TextEditingController();
  // ignore: non_constant_identifier_names
  final _PasswordCont = TextEditingController();

  bool _formState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _formState
          ? loginform(context)
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  Widget loginform(context) {
    return Center(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _usernameCont,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(height: 16.0), // Add some space between the fields
              TextField(
                obscureText: true,
                controller: _PasswordCont,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 16.0), // Add some space between the fields
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _formState = false;
                  });
                  print('ok');
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
