import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChattingFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  const ChattingFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Nachricht',
          hintStyle: TextStyle(color: Colors.white),
          suffixIcon: InkWell(
            onTap: () {
              print('Camera clicked');
            },
            child: Icon(Icons.camera_alt_outlined, color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.primaryBackgroundColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
