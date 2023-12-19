// signInForm.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/navigation/navigation_screen.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_email_field.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_password_field.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_sign_in_button.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_username_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SignInUsernameField(controller: _usernameController),
          SignInEmailField(controller: _emailController),
          SignInPasswordField(controller: _passwordController),
          SignInSignInButton(
            onTap: () {
              _signUpWithEmailAndPassword(
                _usernameController.text,
                _emailController.text,
                _passwordController.text,
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> _signUpWithEmailAndPassword(String username, String email, String password) async {
    try {
      // Trim leading and trailing whitespaces from the email
      email = email.trim();
      print('Attempting to sign up with email: $email');

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      print('User signed up successfully');

      // Optionally, update the user's profile with the provided username
      await FirebaseAuth.instance.currentUser?.updateProfile(displayName: username);

      // Navigate to the next screen or perform additional actions after successful sign-up
      Get.to(() => const NavigationScreen());
    } catch (e) {
      // Log the error details
      print('Error signing up: $e');

      String errorMessage = 'An error occurred during sign-up.';

      if (e is FirebaseAuthException) {
        switch (e.code) {
          case 'invalid-email':
            errorMessage = 'The email address is badly formatted.';
            break;
          case 'email-already-in-use':
            errorMessage = 'The email address is already in use by another account.';
            break;
          // Handle other error codes as needed
        }
      }

      // Display an error message to the user
      Get.snackbar(
        'Sign-Up Error',
        errorMessage,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
