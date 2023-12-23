import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xam_shoes_app/ui/views/discover/discover_screen.dart';
import 'package:xam_shoes_app/ui/views/login/components/login_email_field.dart';
import 'package:xam_shoes_app/ui/views/login/components/login_password_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            LoginEmailField(controller: _emailController),
            LoginPasswordField(controller: _passwordController),
            const SizedBox(height: 16.0), // Add space between password field and login button
            _buildLoginButton(),
          ],
        ),
      ),
    );
  }

  ElevatedButton _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        _signInWithEmailAndPassword(
          _emailController.text,
          _passwordController.text,
        );
      },
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF008DFF),
        onPrimary: Colors.white,
        textStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        minimumSize: const Size(double.infinity, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: const Text('Log In'),
    );
  }

  Future<void> _signInWithEmailAndPassword(String email, String password) async {
    try {
      email = email.trim();
      print('Attempting to sign in with email: $email');

      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      print('User signed in successfully');

      // Optionally, you can navigate to the DiscoverScreen or perform other actions.
      Get.to(() => const DiscoverScreen());
    } catch (e) {
      print('Error signing in: $e');

      String errorMessage = 'An error occurred during sign-in.';

      if (e is FirebaseAuthException) {
        switch (e.code) {
          case 'user-not-found':
            errorMessage = 'There is no user with this email.';
            break;
          case 'wrong-password':
            errorMessage = 'Incorrect password.';
            break;
        }
      }

      Get.snackbar(
        'Sign-In Error',
        errorMessage,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
