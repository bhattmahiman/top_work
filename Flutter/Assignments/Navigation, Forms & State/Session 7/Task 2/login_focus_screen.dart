import 'package:flutter/material.dart';

class LoginFocusScreen extends StatefulWidget {
  const LoginFocusScreen({super.key});

  @override
  State<LoginFocusScreen> createState() => _LoginFocusScreenState();
}

class _LoginFocusScreenState extends State<LoginFocusScreen> {
  // Controllers
  final TextEditingController phoneController = TextEditingController();

  final TextEditingController otpController = TextEditingController();

  final TextEditingController referralController = TextEditingController();

  // Focus nodes
  final FocusNode phoneFocus = FocusNode();
  final FocusNode otpFocus = FocusNode();
  final FocusNode referralFocus = FocusNode();

  @override
  void dispose() {
    phoneController.dispose();
    otpController.dispose();
    referralController.dispose();

    phoneFocus.dispose();
    otpFocus.dispose();
    referralFocus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Phone Number field
            TextField(
              controller: phoneController,
              focusNode: phoneFocus,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                hintText: 'Enter phone number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                FocusScope.of(context).requestFocus(otpFocus);
              },
            ),

            const SizedBox(height: 20),

            // OTP field
            TextField(
              controller: otpController,
              focusNode: otpFocus,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: 'OTP',
                hintText: 'Enter OTP',
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                FocusScope.of(context).requestFocus(referralFocus);
              },
            ),

            const SizedBox(height: 20),

            // Referral Code field
            TextField(
              controller: referralController,
              focusNode: referralFocus,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                labelText: 'Referral Code',
                hintText: 'Enter referral code',
                prefixIcon: Icon(Icons.card_giftcard),
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                FocusScope.of(context).unfocus();
              },
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                FocusScope.of(context).unfocus();

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Login details entered!')),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
