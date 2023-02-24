import 'package:flutter/material.dart';

navTo(context, Widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));

class ProjectCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.deepPurple
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(0,size.height*0.5080000);
    path0.quadraticBezierTo(size.width*0.3050000,size.height*0.6730000,size.width*0.5000000,size.height*0.5040000);
    path0.quadraticBezierTo(size.width*0.7700000,size.height*0.3015000,size.width,size.height*0.5020000);
    path0.lineTo(size.width,0);
    path0.lineTo(0,0);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
