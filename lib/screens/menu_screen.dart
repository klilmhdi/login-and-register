import 'package:flutter/material.dart';
import 'package:login_register/consts.dart';
import 'package:login_register/screens/task1_add_remove_elements/elements_screen.dart';
import 'package:login_register/screens/todo/pages/second.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
              elevation: MaterialStatePropertyAll(0.0),
              padding: MaterialStatePropertyAll(EdgeInsets.all(20.0)),
              ),
              onPressed: () => navTo(context, ElementsPage()),
              child: Text("Go to Add items screen"),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                elevation: MaterialStatePropertyAll(0.0),
                padding: MaterialStatePropertyAll(EdgeInsets.all(20.0)),
              ),
              onPressed: () => navTo(context, SecondPage()),
              child: Text("To-Do Screen"),
            ),
            // MaterialButton(
            //   color: Colors.white,
            //   onPressed: () => navTo(context, ElementsPage()),
            //   child: Text("Go to Add items screen"),
            // )
          ],
        ),
      ),
    );
  }
}
