import 'package:flutter/material.dart';

class CurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    // Adjusted first curve
    final firstCurve = Offset(0, size.height - 24);
    final lastCurve = Offset(30, size.height - 24);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    // Adjusted second curve
    final secondFirstCurve = Offset(0, size.height - 24);
    final secondLastCurve = Offset(size.width - 30, size.height - 24);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy,
        secondLastCurve.dx, secondLastCurve.dy);

    // Adjusted third curve
    final thirdFirstCurve = Offset(size.width, size.height - 24);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy,
        thirdLastCurve.dx, thirdLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
