
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color backgroundColor;
  final String name;
  final VoidCallback ontap;
  const CustomElevatedButton({
    super.key,
    required this.backgroundColor,
    required this.name,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 48.h,
        width: 200.w,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(50)),
        child: Center(
            child: Text(
          name,
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
