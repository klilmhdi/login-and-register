import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_register/consts.dart';
import 'package:login_register/screens/todo/pages/third.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              navTo(context, const ThirdPage());
            },
            backgroundColor: const Color(0xffFFC300),
            child: const Icon(Icons.add, color: Colors.white, size: 30,)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: const Text(
                'Notepad',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.normal),
              ),
            ),
            Container(
                height: 40,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: 'Search notes',
                    hintStyle: const TextStyle(fontSize: 30),
                    prefixIcon: const Icon(
                      size: 25,
                      Icons.search,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                )),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff94FAA8),
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 16, left: 8, right: 8),
                    child: Text(
                      "Today's grocery list",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4, left: 8, right: 8),
                    child: Text("Mar 11 2023 1:00 PM", style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  )

                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xffFFF284),
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 16, left: 8, right: 8),
                    child: Text(
                      "Rich dad Poor dad quotes",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4, left: 8, right: 8),
                    child: Text("Aug 10 2017 8:00 AM", style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  )
                ],
              ),
            )
          ],
        )

    );
  }
}