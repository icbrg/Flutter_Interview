import 'package:flutter/material.dart';
import 'package:flutter_interview/foodmenu.dart';

class FoodListScreen extends StatefulWidget {
  const FoodListScreen({Key? key}) : super(key: key);

  @override
  _FoodListScreenState createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  List<Foodmenu> menu = [
    Foodmenu("กุ้งเผา", "500", "assets/images/shrimp.jpg"),
    Foodmenu("กะเพราหมูสับ", "100", "assets/images/pork-kapao.jpg"),
    Foodmenu("ผัดไท", "120", "assets/images/pad-thai.jpg"),
    Foodmenu("ส้มตำ", "500", "assets/images/somtum.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food List"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              Foodmenu food = menu[index];
              return ListTile(
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "ราคา " + food.price + " บาท",
                  style: TextStyle(fontSize: 14),
                ),
                leading: Image.asset(food.image),
              );
            }),
      ),
    );
  }
}
