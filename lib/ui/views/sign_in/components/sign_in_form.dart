import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/ui/views/discover/discover_screen.dart';
import 'package:ei_autoshop/ui/views/sign_in/components/sign_in_email_field.dart';
import 'package:ei_autoshop/ui/views/sign_in/components/sign_in_password_field.dart';
import 'package:ei_autoshop/ui/views/sign_in/components/sign_in_sign_in_button.dart';
import 'package:ei_autoshop/ui/views/sign_in/components/sign_in_username_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ei_autoshop/core/constants/color_constants.dart';

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
            const SizedBox(height: 16.0), // Add space between password field and sign-up button
            _buildSignUpButton(),
          ],
        ),
      ),
    );
  }

  ElevatedButton _buildSignUpButton() {
    return ElevatedButton(
      onPressed: () async {
        await _signUpWithEmailAndPassword(
          _usernameController.text,
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
      child: const Text('Sign Up'),
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

      // Store the UID in Firestore along with other user details
      await FirebaseFirestore.instance.collection('users').doc(userId).set({
        'userId': userId,
        'username': username,
        'email': email,
        'createdAt': createdAtTimestamp,
      });

      await userCredential.user?.updateProfile(displayName: username);

      // Navigate to Discover Screen or perform any other actions
      Get.to(() => const DiscoverScreen());
    } catch (e) {
      _handleSignUpError(e);
    }
  }

  void _handleSignUpError(dynamic error) {
    print('Error signing up: $error');

    String errorMessage = 'An error occurred during sign-up.';

    if (error is FirebaseAuthException) {
      switch (error.code) {
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
