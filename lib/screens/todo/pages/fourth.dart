import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,

                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding:  EdgeInsets.only(top: 16,left:8,right: 8 ),
                      child: Text(
                        "Mar 11 2023 1:00 PM",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 16,left:8,right: 8 ),
                      child: Text(
                        "Title",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20,left:8,right: 8 ),
                      child:   Text("Today's grocery list" , style: TextStyle(
                        fontSize: 16,

                        color: Colors.black,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20,left:8,right: 8 ),
                      child:   Text("2Peanuts" , style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2,left:8,right: 8 ),
                      child:   Text("1kg mangos" , style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),),
                    )
                    ,
                    Padding(
                      padding: EdgeInsets.only(top: 2,left:8,right: 8 ),
                      child:   Text("12 banans" , style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}