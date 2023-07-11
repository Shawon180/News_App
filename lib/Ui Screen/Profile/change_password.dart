import 'package:flutter/material.dart';

import '../../Const/const.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController newPasswordController=TextEditingController();
  TextEditingController resetPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color: kTitleColor
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('Change Password',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          TextFormField(
            controller: newPasswordController,
            decoration: kInputDecoration.copyWith(prefixIcon: const Icon(Icons.lock), hintText: 'Current Password'),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: resetPasswordController,
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
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: kPrimaryColor),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Change Password'),
                ),
              ],
            ),
          ),
        ],),
      ),
    );
  }
}
