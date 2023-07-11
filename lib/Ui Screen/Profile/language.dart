import 'package:flutter/material.dart';

import '../../Const/const.dart';
class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
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
        title: Text('Language',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(12)
          ),

          child:  ListTile(
              onTap: (){
              },
              title:  Text('English',style: kTextStyle.copyWith(color: kWhite),),
              trailing:const Icon(Icons.check,color: kWhite,)
          ),
        ),
      ),
    );
  }
}
