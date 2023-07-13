import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nuntium/Const/const.dart';
import 'package:nuntium/controller/news_controller.dart';
import 'article_page_details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final productController = Get.put(ProductController());
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(
                //   height: 15,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Image.asset(
                //       'images/Group2.png',
                //       width: 30,
                //       height: 30,
                //     ),
                //     const SizedBox(
                //       width: 10,
                //     ),
                //     Text(
                //       'Nuntium',
                //       style: kTextStyle.copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 18),
                //     ),
                //   ],
                // ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Browse',
                  style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Discover things of this world',
                  style: kTextStyle.copyWith(color: kSubTitleColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: TextFormField(
                    controller: search,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fillColor: kSubSubTitleColor,
                      filled: true,
                      hintText: 'Search..',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: kSubTitleColor,
                      ),
                      suffixIcon: const Icon(
                        Icons.mic_none,
                        color: kSubTitleColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //tabBar
                SizedBox(
                  height: 260,
                  width: double.infinity,
                  child: DefaultTabController(
                    length: 6,
                    child: Column(
                      children: <Widget>[
                        ButtonsTabBar(
                          backgroundColor: kPrimaryColor,
                          unselectedBackgroundColor: Colors.grey[300],
                          unselectedLabelStyle: kTextStyle.copyWith(color: kTitleColor),
                          contentPadding: const EdgeInsets.only(left: 15, right: 15),
                          radius: 35,
                          labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          tabs: const [
                            Tab(
                              text: "Random",
                            ),
                            Tab(
                              text: "Sports",
                            ),
                            Tab(
                              text: "Gaming",
                            ),
                            Tab(
                              text: "Politics",
                            ),
                            Tab(
                              text: "History",
                            ),
                            Tab(
                              text: "Covid-19",
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: <Widget>[
                              StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                                return GetBuilder<ProductController>(builder: (controller) {
                                  return ListView.builder(
                                      itemCount: productController.productData.length,
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemBuilder: (_, index) {
                                        return InkWell(
                                          onTap: () {

                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) =>  ArticilePageDetails(
                                              productModel: productController.productData[index],
                                            ))
                                            );
                                           
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(right: 10.0,top: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 200,
                                                  width: MediaQuery.of(context).size.width / 1.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(16),
                                                    image: DecorationImage(
                                                        image: NetworkImage(productController.productData[index].productPicture), fit: BoxFit.cover),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: [
                                                            IconButton(
                                                                onPressed: () {
                                                                  productController.addToFavorite(productController.productData[index].id);
                                                                },
                                                                icon: productController.productData[index].favorite
                                                                    ? const Icon(
                                                                        Icons.bookmark,
                                                                        color: kWhite,
                                                                      )
                                                                    : const Icon(
                                                                        Icons.bookmark_border,
                                                                        color: kWhite,
                                                                      ))
                                                          ],
                                                        ),
                                                        Text(
                                                          productController.productData[index].productName,
                                                          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                });
                              }),
                              const Center(
                                child: Icon(Icons.directions_transit),
                              ),
                              const Center(
                                child: Icon(Icons.directions_bike),
                              ),
                              const Center(
                                child: Icon(Icons.directions_car),
                              ),
                              const Center(
                                child: Icon(Icons.directions_transit),
                              ),
                              const Center(
                                child: Icon(Icons.directions_bike),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommended for you',
                        style: kTextStyle.copyWith(fontWeight: FontWeight.bold, color: kTitleColor, fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: kTextStyle.copyWith(color: kSubTitleColor),
                          )),
                    ],
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 96,
                            height: 96,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(image: AssetImage('images/creating.png'), fit: BoxFit.cover)),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: kPrimaryColor),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Ui/Ux',
                                    style: kTextStyle.copyWith(color: kWhite),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                'A Simple Trick For Creating Color Palettes Quickly',
                                style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '3 Min Read ',
                                    style: kTextStyle.copyWith(color: kSubTitleColor),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 5,
                                        width: 5,
                                        decoration: const BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Today',
                                        style: kTextStyle.copyWith(color: kSubTitleColor),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 96,
                            height: 96,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(image: AssetImage('images/creating.png'), fit: BoxFit.cover)),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.orangeAccent),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Design',
                                    style: kTextStyle.copyWith(color: kWhite),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                'A Simple Trick For Creating Color Palettes Quickly',
                                style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '3 Min Read ',
                                    style: kTextStyle.copyWith(color: kSubTitleColor),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 5,
                                        width: 5,
                                        decoration: const BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Today',
                                        style: kTextStyle.copyWith(color: kSubTitleColor),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
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
