import 'package:flutter/material.dart';
import 'package:nuntium/Const/const.dart';

import '../OnBoarding_Screen/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  Future<void> goto()async {
    Future.delayed(const Duration(seconds: 3)).then((value) =>

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
        ),

    );
  }
  @override
  void initState() {
   goto();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/logoIcon.png',width: 50,height: 50,),
            const SizedBox(height: 10,),
            Text('Nuntium',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold,fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
