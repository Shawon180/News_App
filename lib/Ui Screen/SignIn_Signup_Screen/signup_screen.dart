import 'package:flutter/material.dart';
import 'package:nuntium/Ui%20Screen/SignIn_Signup_Screen/sign_in_screen.dart';

import '../../Const/const.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController username=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirmPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account?',
            style: kTextStyle.copyWith(color: kSubTitleColor, fontWeight: FontWeight.bold, ),
          ),

          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignInScreen()),
              );

            },
            child: Text(
              'Sign In',
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
                  'Welcome Back 👋',
                  style: kTextStyle.copyWith(fontSize: 24, color: kTitleColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'I am happy to see you again. You can continue where you left off by logging in',
                  style: kTextStyle.copyWith(color: kSubTitleColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: username,
                  decoration: kInputDecoration.copyWith(prefixIcon: const Icon(Icons.person), hintText: 'Username'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: email,
                  decoration: kInputDecoration.copyWith(prefixIcon: const Icon(Icons.email), hintText: 'Email Address'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: password,
                  decoration: kInputDecoration.copyWith(prefixIcon: const Icon(Icons.lock), hintText: 'Password'),
                ),


                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: confirmPassword,
                  decoration: kInputDecoration.copyWith(prefixIcon: const Icon(Icons.lock), hintText: 'Confirm Password'),
                ),
                const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignInScreen()),
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
                        child: Text('Sign Up'),
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
