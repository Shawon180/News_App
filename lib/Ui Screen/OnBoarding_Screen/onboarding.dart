import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nuntium/Const/const.dart';
import 'package:nuntium/Ui%20Screen/OnBoarding_Screen/onboarding_2.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0,right: 10,left: 10),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(image: AssetImage('images/firstpage.jpg'),fit: BoxFit.fitHeight)
              ),
            ),
            const SizedBox(height: 150,),
            Text('First to know',style: kTextStyle.copyWith(fontSize: 24,color: kTitleColor,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Text('All news in one place, be\nthe first to know last news',style: kTextStyle.copyWith(color: kSubTitleColor,fontSize: 16,),textAlign: TextAlign.center,),

            const SizedBox(height: 70,),
            ElevatedButton(onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OnBoarding2()),
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
                  child: Text('Next'),
                ),
              ],
            ),)

          ],
        ),
      )
    );
  }
}
