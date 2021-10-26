import 'package:flutter/material.dart';

class GradientBorderCircleAvatar extends StatelessWidget {
  const GradientBorderCircleAvatar({
    Key? key,
    required this.imagePath,
    required this.colors,
    this.padding,
    this.margin,
    this.width,
    this.borderWidth,
    this.borderColor,
  }) : super(key: key);

  final String imagePath;
  final List<Color> colors;
  final EdgeInsetsGeometry? padding, margin;
  final double? width, borderWidth;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final avartarWidth = (width ?? screenWidth / 2) / 2;
    final avartarBorderWidth = borderWidth ?? 10;
    return Container(
      padding: EdgeInsets.all(avartarBorderWidth),
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colors,
        ),
        borderRadius: BorderRadius.circular(1000),
      ),
      child: CircleAvatar(
        radius: avartarWidth,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
