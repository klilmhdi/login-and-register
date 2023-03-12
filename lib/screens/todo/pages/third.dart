import 'package:flutter/material.dart';
import 'package:login_register/screens/todo/pages/fourth.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  List pages=[ const FourthPage(),const FourthPage(), const FourthPage()];
  int cureentIndex=0;
  void onTap(int index){
    setState(() {
      cureentIndex=index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                // navTo(context, const HomePage());
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xffFFC300),
              )),
          title: const Text('Note',
              style: TextStyle(
                color: Colors.black,
              )),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  // navTo(context, const HomePage());
                },
                icon: const Icon(
                  Icons.share,
                  color: Color(0xffFFC300),
                )),
            IconButton(
                onPressed: () {
                  // navTo(context, const HomePage());
                },
                icon: const Icon(
                  Icons.list,
                  color: Color(0xffFFC300),
                ))

          ],
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: cureentIndex,
          onTap: onTap,
          type: BottomNavigationBarType.shifting,
          elevation: 0,
          selectedItemColor: Color(0xffFFC300),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon : Icon(Icons.camera_alt_sharp,size: 20),label: 'Album',),
            BottomNavigationBarItem(
              icon : Icon(Icons.format_list_bulleted_outlined,size: 20),label: 'to do list',),
            BottomNavigationBarItem(
              icon : Icon(Icons.notifications_none,size: 20),label: 'Reminder',),

          ],
        ),
        body: pages[cureentIndex],
      ),
    );
  }
  navTo(context, Widget) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));
}