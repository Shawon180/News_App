import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../Const/const.dart';
import 'create_new_password.dart';
class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
                  'Verification Code ✅',
                  style: kTextStyle.copyWith(fontSize: 24, color: kTitleColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'You need to enter 4-digit code we send to your email adress.',
                  style: kTextStyle.copyWith(color: kSubTitleColor),
                ),
                const SizedBox(
                  height: 30,
                ),








                Center(
                  child: Pinput(
                    length: 4,
                    focusedPinTheme: PinTheme(
                        height: 55,
                        width: 55,
                        textStyle: const TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(30, 60, 87, 1),
                            fontWeight: FontWeight.w600),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: kPrimaryColor),
                        )),
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    defaultPinTheme: PinTheme(
                        height: 55,
                        width: 55,
                        textStyle: const TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(30, 60, 87, 1),
                            fontWeight: FontWeight.w600),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color:
                              const Color.fromRGBO(234, 239, 243, 1)),
                        )),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CreateNewPassword()),
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
