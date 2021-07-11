import 'dart:ui';

import 'package:flutter/material.dart';

class DrawArea {
  Offset point;
  Paint areaPaint;
  DrawArea({required this.point, required this.areaPaint});
}

class MyCustomPainter extends CustomPainter {
  List<DrawArea>? points;

  MyCustomPainter({required this.points});
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint background = Paint()..color = Colors.black;
    Rect rect = Rect.fromLTWH(0, 0, 256, 256);
    canvas.drawRect(rect, background);
    canvas.clipRect(rect);

    for (int x = 0; x < points!.length - 1; x++) {
      if (points![x] != null && points![x + 1] != null) {
        canvas.drawLine(
            points![x].point, points![x].point, points![x].areaPaint);
      } else if (points![x] != null && points![x + 1] == null) {
        canvas.drawPoints(
            PointMode.points, [points![x].point], points![x].areaPaint);
      }
    }
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    //throw UnimplementedError();
    var points;
    return oldDelegate.points != points;
  }
}
