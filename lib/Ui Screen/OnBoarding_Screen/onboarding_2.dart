import 'package:flutter/material.dart';

import '../../Const/const.dart';
import '../SignIn_Signup_Screen/sign_in_screen.dart';
class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.only(top: 60.0,right: 10,left: 10),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(image: AssetImage('images/hand.png'),fit: BoxFit.fitHeight)
              ),
            ),
            const SizedBox(height: 150,),
            Text('Nuntium',style: kTextStyle.copyWith(fontSize: 24,color: kTitleColor,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Text('All news in one place, be\nthe first to know last news',style: kTextStyle.copyWith(color: kSubTitleColor,fontSize: 16,),textAlign: TextAlign.center,),

            const SizedBox(height: 70,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignInScreen()),
              );

            }, style:  ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: kPrimaryColor
            ), child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Get Started'),
                ),
              ],
            ),)

          ],
        ),
      )
    );
  }
}
