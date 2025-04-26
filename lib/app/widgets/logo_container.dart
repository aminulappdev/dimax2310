import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoContainer extends StatelessWidget {
  final String logoPath;
  final int logoRadius;
  
  const LogoContainer({
    super.key, required this.logoPath, required this.logoRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: logoRadius.h,
        width: logoRadius.w,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(logoPath),
        )),
      ),
    );
  }
}
