import 'package:flutter/material.dart';
import 'package:nuntium/Ui%20Screen/SignIn_Signup_Screen/verification_screen.dart';

import '../../Const/const.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Remember the password?',
            style: kTextStyle.copyWith(color: kSubTitleColor, fontWeight: FontWeight.bold, ),
          ),

          TextButton(
            onPressed: () {},
            child: Text(
              'Try again',
              style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold,),
            ),
          )
        ],),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Forgot Password 🤔',
                  style: kTextStyle.copyWith(fontSize: 24, color: kTitleColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'We need your email adress so we can send you the password reset code.',
                  style: kTextStyle.copyWith(color: kSubTitleColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: kInputDecoration.copyWith(prefixIcon: const Icon(Icons.mail), hintText: 'Email Address'),
                ),

                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const VerificationScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: kPrimaryColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Next'),
                      ),
                    ],
                  ),
                ),







              ],
            ),
          ),
        ),
      ),
    );
  }
}
