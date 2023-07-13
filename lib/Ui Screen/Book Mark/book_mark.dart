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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'BookMarks',
              style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
            ),
            Text(
              'Saved articles to the library',
              style: kTextStyle.copyWith(color: kSubTitleColor, fontSize: 14),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GetBuilder<ProductController>(
          builder: (context) {
            final favoriteList =
            productController.productData.where((item) => item.favorite).toList();

            if (favoriteList.isEmpty) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/bookMarkIcon.png',
                        width: 72,
                        height: 72,
                      ),
                      Text(
                        'You haven\'t saved any articles yet. Start reading and bookmarking them now',
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: favoriteList.length,
                itemBuilder: (context, index) {
                  final item = favoriteList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          horizontalTitleGap: 5,
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: NetworkImage(item.productPicture),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Text(item.productName),
                          trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                favoriteList.removeAt(index);
                              });
                              productController.addToFavorite(item.id);
                            },
                            icon: const Icon(
                              Icons.bookmark,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
