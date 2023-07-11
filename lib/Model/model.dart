import 'package:flutter/material.dart';

class ProductModel {
   late final int id;
   late String productName;
   late String productDetail;
   late String productPicture;
   late double price;
   late bool favorite;

   ProductModel(
       {required this.id,
          required this.productName,
          required this.productDetail,
          required this.productPicture,
          required this.price,
          required this.favorite});
}

//
// class NewsModel {
//    final int id;
//    final String title;
//    final String published;
//    final String image;
//    final String details;
//    late final bool favorite;
//   NewsModel( {
//      required this.id,
//      required this.title,
//      required this.published,
//      required this.image,
//      required this.details,
//      required this.favorite,
//   });
//
// }
//
