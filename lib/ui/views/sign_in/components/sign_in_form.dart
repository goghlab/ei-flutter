// signInForm.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/discover/discover_screen.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_email_field.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_password_field.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_sign_in_button.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_username_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SignInUsernameField(controller: _usernameController),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SignInEmailField(controller: _emailController),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SignInPasswordField(controller: _passwordController),
            ),

            ElevatedButton(
              onPressed: () {
                _signUpWithEmailAndPassword(
                  _usernameController.text,
                  _emailController.text,
                  _passwordController.text,
                );
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _signUpWithEmailAndPassword(String username, String email, String password) async {
    try {
      email = email.trim();
      print('Attempting to sign up with email: $email');

      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      print('User signed up successfully');

      String userId = userCredential.user!.uid;
      DateTime now = DateTime.now();
      Timestamp createdAtTimestamp = Timestamp.fromDate(now);

      await FirebaseFirestore.instance.collection('users').doc(userId).set({
        'userId': userId,
        'username': username,
        'email': email,
        'createdAt': createdAtTimestamp,
      });

      await userCredential.user?.updateProfile(displayName: username);

      Get.to(() => const DiscoverScreen());
    } catch (e) {
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
        }
      }

      Get.snackbar(
        'Sign-Up Error',
        errorMessage,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
