import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/favouriteController.dart';
import 'package:get/get.dart';

class FruitScreen extends StatefulWidget {
  const FruitScreen({super.key});

  @override
  State<FruitScreen> createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  FavouriteController favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Fruits'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: favouriteController.fruitLst.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Card(
                  child: ListTile(
                      onTap: () {
                        if (favouriteController.tempList.contains(
                            favouriteController.fruitLst[index].toString())) {
                          favouriteController.removeFruits(
                              favouriteController.fruitLst[index].toString());
                        } else {
                          favouriteController.addFruits(
                              favouriteController.fruitLst[index].toString());
                        }
                      },
                      title:
                          Text(favouriteController.fruitLst[index].toString()),
                      trailing: Obx(
                        () => Icon(Icons.favorite,
                            color: (favouriteController.tempList.contains(
                                    favouriteController.fruitLst[index]
                                        .toString()))
                                ? Colors.red
                                : Colors.white),
                      )),
                ),
              ],
            );
          }),
    );
  }
}
