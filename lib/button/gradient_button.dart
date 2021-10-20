import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.child,
    required this.colors,
    required this.onTap,
    this.begin,
    this.end,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.radius,
  }) : super(key: key);

  final Widget child;
  final List<Color> colors;
  final Function onTap;
  final AlignmentGeometry? begin, end;
  final EdgeInsetsGeometry? padding, margin;
  final double? width, height, radius;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: margin ?? EdgeInsets.zero,
      child: Stack(
        children: [
          Container(
            padding: padding ?? EdgeInsets.zero,
            width: width ?? screenWidth / 2,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: begin ?? Alignment.topRight,
                end: end ?? Alignment.bottomLeft,
                colors: colors,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: colors[0].withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(2, 2),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: child,
          ),
          Positioned.fill(
            top: 0,
            left: 0,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  onTap();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
