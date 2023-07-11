import 'package:flutter/material.dart';

import 'package:share/share.dart';

import '../../Const/const.dart';
import '../../Model/model.dart';
class ArticilePageDetails extends StatelessWidget {

  final ProductModel productModel;
  const ArticilePageDetails({Key? key, required this.productModel,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
        return Scaffold(

         extendBodyBehindAppBar: true,
         appBar:AppBar(

            elevation: 0,
            backgroundColor: Colors.transparent,
            actions:  [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: ()  { Share.share('h');}, icon:  const Icon(Icons.share,color: kWhite,))
                  ],),
              )
            ],


          ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
height: 250,

            width: double.infinity,
            decoration:  BoxDecoration(

                image: DecorationImage(image: NetworkImage(productModel.productPicture.toString()),fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productModel.productName,style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),


                Row(
                  children: [
                    Text('Published:',style:kTextStyle.copyWith(color: kSubTitleColor,fontSize: 10),),
                    Text('12:4 PM',style:kTextStyle.copyWith(color: kSubTitleColor,fontSize: 10),),
                  ],
                ),
                const SizedBox(height: 10,),
                Text(productModel.productDetail,style:kTextStyle.copyWith(color: kTitleColor),),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

















