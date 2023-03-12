import 'package:flutter/material.dart';

navTo(context, Widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));

navAndFinish(context, Widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => Widget), (route) {
  return false;
});

class ProjectCustomPainter extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0,0);
    path.lineTo(0,size.height*0.5080000);
    path.quadraticBezierTo(size.width*0.3050000,size.height*0.6730000,size.width*0.5000000,size.height*0.5040000);
    path.quadraticBezierTo(size.width*0.7700000,size.height*0.3015000,size.width,size.height*0.5020000);
    path.lineTo(size.width,0);
    path.lineTo(0,0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}

/*


 */