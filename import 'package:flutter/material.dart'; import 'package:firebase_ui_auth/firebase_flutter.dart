import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

class AuthOptionWidget extends StatelessWidget {
  const AuthOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SignInScreen(
                  providers: [EmailAuthProvider()],
                  actions: [
                    AuthStateChangeAction<SignedIn>(
                      (context, state) {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                  showAuthActionSwitch: false,
                ),
              ),
            );
          },
          child: const Text('Sign In'),
        ),
        const SizedBox(height: 12),
        OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => RegisterScreen(
                  providers: [EmailAuthProvider()],
                  actions: [
                    AuthStateChangeAction<SignedIn>(
                      (context, state) {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                  showAuthActionSwitch: false,
                ),
              ),
            );
          },
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
