import 'package:flutter/material.dart';
import 'package:nuntium/Ui%20Screen/SignIn_Signup_Screen/sign_in_screen.dart';

import '../../Const/const.dart';
class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {

  TextEditingController newPasswordController=TextEditingController();
  TextEditingController resetPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Didn’t receive an email?',
            style: kTextStyle.copyWith(color: kSubTitleColor, fontWeight: FontWeight.bold, ),
          ),

          TextButton(
            onPressed: () {},
            child: Text(
              'Send again',
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
                  controller: newPasswordController,
                  decoration: kInputDecoration.copyWith(prefixIcon: const Icon(Icons.lock), hintText: 'New Password'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: resetPasswordController,
                  decoration: kInputDecoration.copyWith(prefixIcon: const Icon(Icons.lock), hintText: 'Repeat New Password'),
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
                        child: Text('Confirm'),
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
