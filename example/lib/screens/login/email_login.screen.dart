import 'package:example/screens/login/login_layout.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class EmailLoginScreen extends StatelessWidget {
  static const String routeName = '/email_login';
  const EmailLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ComicTheme(
            child: LoginLayout(
              children: [
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      label: Text('Email'),
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
                const SizedBox(
                  height: 16,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      label: Text('Password'),
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Sign In')),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Text(' Or Sign in with '),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  label: const Text('Phone Number'),
                  icon: const Icon(Icons.phone),
                )
              ],
            ),
          ),
        ));
  }
}
