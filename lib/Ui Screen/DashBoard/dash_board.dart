import 'package:flutter/material.dart';

import '../../Const/const.dart';
class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Categories',
                  style: kTextStyle.copyWith(fontSize: 24, color: kTitleColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Thousands of articles in each category',
                  style: kTextStyle.copyWith(color: kSubTitleColor),
                ),
                const SizedBox(
                  height: 30,
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          sports=!sports;
                        });
                      },
                      child: Container(
                        height: 72,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:sports==false? kSubSubTitleColor:kPrimaryColor),
                        child: Text(
                          '🏈   Sports',
                          style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:sports==false? kTitleColor:kWhite),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          politics=!politics;
                        });
                      },
                      child: Container(
                        height: 72,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:politics==false? kSubSubTitleColor:kPrimaryColor),
                        child: Text(
                          '⚖️ Politics',
                          style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:politics==false? kTitleColor:kWhite),
                        ),
                      ),
                    ),

                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    InkWell(
                      onTap: (){
                        setState(() {
                          life=!life;
                        });
                      },
                      child: Container(
                        height: 72,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:life==false? kSubSubTitleColor:kPrimaryColor),
                        child: Text(
                          '🌞   Life',
                          style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:life==false? kTitleColor:kWhite),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          gaming=!gaming;
                        });
                      },
                      child: Container(
                        height: 72,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:gaming==false? kSubSubTitleColor:kPrimaryColor),
                        child: Text(
                          '🎮   Gaming',
                          style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:gaming==false? kTitleColor:kWhite),
                        ),
                      ),
                    ),

                  ],
                ),

                const SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          animals=!animals;
                        });
                      },
                      child: Container(
                        height: 72,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:animals==false? kSubSubTitleColor:kPrimaryColor),
                        child: Text(
                          '🐻   Animals',
                          style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:animals==false? kTitleColor:kWhite),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          nature=!nature;
                        });
                      },
                      child: Container(
                        height: 72,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:nature==false? kSubSubTitleColor:kPrimaryColor),
                        child: Text(
                          '🌴   Nature',
                          style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:nature==false? kTitleColor:kWhite),
                        ),
                      ),
                    ),

                  ],
                ),


                const SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          food=!food;
                        });
                      },
                      child: Container(
                        height: 72,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:food==false? kSubSubTitleColor:kPrimaryColor),
                        child: Text(
                          '🍔   Food',
                          style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:food==false? kTitleColor:kWhite),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          art=!art;
                        });
                      },
                      child: Container(
                        height: 72,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:art==false? kSubSubTitleColor:kPrimaryColor),
                        child: Text(
                          '🎨   Art',
                          style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:art==false? kTitleColor:kWhite),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          history=!history;
                        });
                      },
                      child: Container(
                        height: 72,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:history==false? kSubSubTitleColor:kPrimaryColor),
                        child: Text(
                          '📜   History',
                          style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:history==false? kTitleColor:kWhite),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          fashion=!fashion;
                        });
                      },
                      child: Container(
                        height: 72,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:fashion==false? kSubSubTitleColor:kPrimaryColor),
                        child: Text(
                          '👗   Fashion',
                          style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:fashion==false? kTitleColor:kWhite),
                        ),
                      ),
                    ),
                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
