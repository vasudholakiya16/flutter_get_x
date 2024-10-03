import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/ex_4_controller.dart';
import 'package:get/get.dart';

class Ex4 extends StatefulWidget {
  const Ex4({super.key});

  @override
  State<Ex4> createState() => _Ex4State();
}

class _Ex4State extends State<Ex4> {
  FavouriteController favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ex4'),
      ),
      body: ListView.builder(
        itemCount: favouriteController.items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                onTap: () {
                  if (favouriteController.tempFavList
                      .contains(favouriteController.items[index])) {
                    favouriteController
                        .removeFromFavourite(favouriteController.items[index]);
                  } else {
                    favouriteController
                        .addToFavourite(favouriteController.items[index]);
                  }
                },
                title: Text('Item $index'),
                trailing: Obx(
                  () => IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: favouriteController.tempFavList
                              .contains(favouriteController.items[index])
                          ? Colors.red
                          : Colors.grey,
                    ),
                    onPressed: () {
                      if (favouriteController.tempFavList
                          .contains(favouriteController.items[index])) {
                        favouriteController.removeFromFavourite(
                            favouriteController.items[index]);
                      } else {
                        favouriteController
                            .addToFavourite(favouriteController.items[index]);
                      }
                    },
                  ),
                )),
          );
        },
      ),
    );
  }
}
