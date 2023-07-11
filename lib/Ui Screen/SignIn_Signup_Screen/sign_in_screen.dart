import 'package:flutter/material.dart';
import 'package:nuntium/Ui%20Screen/SignIn_Signup_Screen/forget_password.dart';
import 'package:nuntium/Ui%20Screen/SignIn_Signup_Screen/signup_screen.dart';

import '../../Const/const.dart';
import '../Selected Your Favorite Topic/select_favorite_topic.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account?',
            style: kTextStyle.copyWith(color: kSubTitleColor, fontWeight: FontWeight.bold, ),
          ),

          TextButton(
            onPressed: () {


              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()),
              );
            },
            child: Text(
              'Sign Up',
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
                  controller: emailController,
                  decoration: kInputDecoration.copyWith(prefixIcon: const Icon(Icons.mail), hintText: 'Email Address'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: kInputDecoration.copyWith(prefixIcon: const Icon(Icons.lock), hintText: 'Password'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ForgetPassword()),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: kTextStyle.copyWith(color: kSubTitleColor, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SelectFavoriteTopic()),
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
                        child: Text('Sign In'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Or',
                    style: kTextStyle.copyWith(color: kSubTitleColor),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(width: 1, color: kSubSubTitleColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('images/google.png'),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Sign In with Google',
                          style: kTextStyle.copyWith(color: kSubTitleColor, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),


                const SizedBox(
                  height: 20,
                ),

                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(width: 1, color: kSubSubTitleColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('images/facebook.png'),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Sign In with Facebook',
                          style: kTextStyle.copyWith(color: kSubTitleColor, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
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
