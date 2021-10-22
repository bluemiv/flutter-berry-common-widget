import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
    required this.imagePath,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.radius,
  }) : super(key: key);

  final String imagePath;
  final EdgeInsetsGeometry? padding, margin;
  final double? width, height, radius;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: padding ?? EdgeInsets.zero,
      margin: margin ?? EdgeInsets.zero,
      width: width ?? screenWidth / 2,
      height: height ?? screenWidth / 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? screenWidth),
        child: Image.asset(imagePath),
      ),
    );
  }
}
