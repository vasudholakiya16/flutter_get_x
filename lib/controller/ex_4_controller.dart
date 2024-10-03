import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> items = List<String>.generate(10, (i) => 'Item $i').obs;
  RxList tempFavList = [].obs;

  addToFavourite(String value) {
    tempFavList.add(value);
    print('Favourite: $tempFavList');
  }

  removeFromFavourite(String value) {
    tempFavList.remove(value);
    print('Favourite: $tempFavList');
  }
}
