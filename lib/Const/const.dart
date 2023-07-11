import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Color(0xff475AD7);
const kSubSubTitleColor = Color(0xffF3F4F6);
const kTitleColor = Color(0xff333647);
const kSubTitleColor = Color(0xff7C82A1);
const kWhite = Color(0xFFFFFFFF);

final kTextStyle = GoogleFonts.inter(
  color: kTitleColor,
);

InputDecoration kInputDecoration = const InputDecoration(
  hintStyle: TextStyle(color: kSubTitleColor),
  prefixIconColor: kPrimaryColor,
  labelStyle: TextStyle(color: kSubSubTitleColor),
  filled: true,
  fillColor: Color(0xffF3F4F6),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
    borderSide: BorderSide(color: kSubSubTitleColor, width: 1),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
    borderSide: BorderSide(color: kPrimaryColor, width: 1),
  ),
);

ElevatedButton kButton=ElevatedButton(
  style:  ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  onPressed: () {},
  child:  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Continue',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold)),
    ],
  ),
);

bool sports=false;
bool bookMark = false;
bool politics = false;
bool life = false;
bool gaming = false;
bool animals = false;
bool nature = false;
bool food = false;
bool art = false;
bool history = false;
bool fashion = false;
bool notification = true;
List<String>myList=[
  'Random','🏈 Sports','⚖ Politics', '🎮 Gaming','🐻 Animals','👗 Fashion',
];
String isSelect='Random';

int _startIndex=0;