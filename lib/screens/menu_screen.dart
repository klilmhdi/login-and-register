import 'package:flutter/material.dart';
import 'package:login_register/consts.dart';
import 'package:login_register/screens/task1_add_remove_elements/elements_screen.dart';
import 'package:login_register/screens/todo/pages/second.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: () => navTo(context, ElementsPage()),
              child: Text("Go to Add items screen"),
            ),
            MaterialButton(
              onPressed: () => navTo(context, SecondPage()),
              child: Text("To-Do Screen"),
            ),
            MaterialButton(
              onPressed: () => navTo(context, ElementsPage()),
              child: Text("Go to Add items screen"),
            )
          ],
        ),
      ),
    );
  }
}
