
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageContainer extends StatelessWidget {
  final double height;
  final double? width;
  final double radius;
  final String imagePath;
  const ImageContainer({
    super.key, required this.height, this.width, required this.radius, required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
              image: AssetImage(imagePath), fit: BoxFit.fill)),
      
    );
  }
}