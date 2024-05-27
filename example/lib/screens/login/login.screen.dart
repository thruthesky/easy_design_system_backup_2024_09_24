import 'package:example/screens/login/email_login.screen.dart';
import 'package:example/screens/login/login_layout.dart';
import 'package:example/screens/login/verify_number_dialog.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login_screen';

  const LoginScreen({super.key});

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
              TextField(
                decoration: InputDecoration(
                    prefixIcon: SizedBox(
                      width: 0,
                      child: Center(
                        child: Text(
                          '+63',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    hintText: '9012345678',
                    label: const Text('Mobile'),
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => Theme(
                    data: ComicTheme.of(context),
                    child: const Dialog(
                      child: VerifyNumberDialog(),
                    ),
                  ),
                ),
                child: const Text('Generate OTP'),
              ),
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const EmailLoginScreen()));
                },
                label: const Text('Phone Number'),
                icon: const Icon(Icons.email),
              )
            ],
          ),
        ),
      ),
    );
  }
}
