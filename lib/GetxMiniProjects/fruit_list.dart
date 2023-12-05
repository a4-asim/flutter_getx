import 'package:flutter/material.dart';

class FruitScreen extends StatefulWidget {
  const FruitScreen({super.key});

  @override
  State<FruitScreen> createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  List<String> fruitList = ['Apple', 'Orange', 'Bannana', 'Stawbery', 'Grapes'];
  List<String> tempList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Fruits'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: fruitList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Card(
                  child: ListTile(
                    onTap: () {
                      if (tempList.contains(fruitList[index].toString())) {
                        tempList.remove(fruitList[index].toString());
                      } else {
                        tempList.add(fruitList[index].toString());
                      }

                      setState(() {});
                    },
                    title: Text(fruitList[index].toString()),
                    trailing: Icon(Icons.favorite,
                        color: (tempList.contains(fruitList[index].toString()))
                            ? Colors.red
                            : Colors.white),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
