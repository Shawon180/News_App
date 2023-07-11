import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuntium/Const/const.dart';

import '../../Model/model.dart';
import '../../controller/news_controller.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    List<ProductModel> favoriteList = productController.productData.where((item) => item.favorite).toList();
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        iconTheme: const IconThemeData(color: kTitleColor),
        elevation: 0,
        title: Text('BookMarks',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: GetBuilder<ProductController>(
          builder: (context){
            return ListView.builder(
              itemCount: favoriteList.length,
              itemBuilder: (context, index) {
                ProductModel item = favoriteList[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0,right: 10,left: 10),
                  child: Card(

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        horizontalTitleGap: 5,
                        contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: NetworkImage(item.productPicture),fit: BoxFit.cover)
                          ),
                        ),
                        title: Text(item.productName),
                        trailing:  IconButton(
                            onPressed: () {

                              productController.addToFavorite(productController.productData[index].id);


                            },
                            icon: productController.productData[index].favorite
                                ? const Icon(
                              Icons.bookmark,
                              color: kPrimaryColor,
                            )
                                : const Icon(
                              Icons.bookmark_border,
                              color: kSubTitleColor,
                            )),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
