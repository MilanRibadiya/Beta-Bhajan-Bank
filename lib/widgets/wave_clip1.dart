import 'package:flutter/material.dart';

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - (size.height * 0.09));
    var firstStart =
    Offset(size.width * 0.21, size.height + (size.height * 0.05));
    var firstEnd = Offset(size.width / 2, size.height - (size.height * 0.055));
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
    Offset(size.width * 0.8, size.height - (size.height * 0.15));
    var secondEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;

    // TODO: implement getClip
    // throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    // throw UnimplementedError();
    return true;
  }
}