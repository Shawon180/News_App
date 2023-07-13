import 'package:get/get.dart';

import '../Model/model.dart';

class ProductController extends GetxController {
  List<ProductModel> productData = <ProductModel>[].obs;
  List<ProductModel> cartItem = List<ProductModel>.empty().obs;
  addToCart(ProductModel item) {
    cartItem.add(item);
  }

  double get totalPrice => cartItem.fold(0, (sum, item) => sum + item.price);
  int get count => cartItem.length;
  @override
  void onInit() {
    super.onInit();
    myProductData();
  }

  myProductData() async {
    await Future.delayed(const Duration(seconds: 1));
    List<ProductModel> severRes = [
      ProductModel(
          id: 1,
          productName: 'Is the ‘Fab 5’ making a comeback?',
          productDetail:
              'As the dust settles on the two-day retirement saga of Tamim Iqbal, the question  that naturally arises now is what will happen next. Tamim, as we all know by now, has revoked his retirement and will once again join the team as captain in the Asia Cup. The Southpaw is also set to lead the team in the 2023 ICC World Cup in India.',
          productPicture:
              'https://images.prothomalo.com/prothomalo-english%2F2023-07%2F28a96beb-4c79-4f09-a834-0ae8271b40b2%2Fprothomalo_english_import_media_2019_05_30_4067fbdb82b878c10860f6a025e4ea04_5.webp?rect=0%2C0%2C638%2C359&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0',
          price: 22,
          favorite: false),
      ProductModel(
          id: 2,
          productName: 'Food storage project halfway though a decade has gone by',
          productDetail: 'A government project aiming to enhance food security in Bangladesh has made less than 50 per cent progress even though nearly 10 years have passed since the Tk 3,569 crore initiative ',
          productPicture: 'https://tds-images.thedailystar.net/sites/default/files/styles/big_201/public/images/2023/07/13/silo.jpg',
          price: 25,
          favorite: false),
      ProductModel(
          id: 3,
          productName: 'Is the proposed pension scheme really universal?',
          productDetail: 'A government project aiming to enhance food security in Bangladesh has made less than 50 per cent progress even though nearly 10 years have passed since the Tk 3,569 crore initiative ',
          productPicture: 'https://tds-images.thedailystar.net/sites/default/files/styles/medium_202/public/images/2023/07/12/bnp-rally.jpg',
          price: 20,
          favorite: false),
      ProductModel(
          id: 4,
          productName: 'No polls unless under Hasina: AL declares at rally',
          productDetail:
          'As the dust settles on the two-day retirement saga of Tamim Iqbal, the question  that naturally arises now is what will happen next. Tamim, as we all know by now, has revoked his retirement and will once again join the team as captain in the Asia Cup. The Southpaw is also set to lead the team in the 2023 ICC World Cup in India.',
          productPicture:
          'https://tds-images.thedailystar.net/sites/default/files/styles/medium_202/public/images/2023/07/12/al-rally.jpg',
          price: 22,
          favorite: false),
      ProductModel(
          id: 5,
          productName: 'RMG export to India crosses \$1 billion',
          productDetail:
          'As the dust settles on the two-day retirement saga of Tamim Iqbal, the question  that naturally arises now is what will happen next. Tamim, as we all know by now, has revoked his retirement and will once again join the team as captain in the Asia Cup. The Southpaw is also set to lead the team in the 2023 ICC World Cup in India.',
          productPicture:
          'https://tds-images.thedailystar.net/sites/default/files/styles/big_201/public/images/2023/07/13/rmg.jpg',
          price: 22,
          favorite: false),



    ];

    productData.assignAll(severRes);
    update();
  }

  void addToFavorite(id) {
    var index = productData.indexWhere((element) => element.id == id);
    productData[index].favorite = !productData[index].favorite;
    update();
  }

  void removeFavoriteItems(id) {
    productData.removeAt(id);
    refresh();

    update();
  }




}
