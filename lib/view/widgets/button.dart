import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Color color;
  Widget child;
  double? height;
  double? width;
  double? radius;

   var func;

  Button({
    this.func,
    this.height = 40,
    this.radius = 20.0,
    this.width = 130,
    required this.color,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius!),
        ),
        child: child,
      ),
    );
  }
}
