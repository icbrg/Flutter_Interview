import 'package:flutter/material.dart';
import 'package:flutter_interview/screen/foodlist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register&Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          children: [
            Image.asset("assets/images/food_logo.png"),
            Text(
              "Welcome to FoodApp",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                          return FoodListScreen();
                        }));
                  },
                  icon: Icon(Icons.login),
                  label: Text(
                    "เข้าสู่ร้านอาหาร",
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
