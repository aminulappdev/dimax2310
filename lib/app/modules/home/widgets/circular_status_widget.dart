import 'package:dimax2310/app/modules/people/views/chat_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';

class CircularStatus extends StatelessWidget {
  final String status;
  final String imagePath;
  const CircularStatus({
    super.key,
    required this.status,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: () {
          Get.to(ChatListScreen());
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 32.r,
              backgroundImage: AssetImage(imagePath),
            ),
            Positioned(
              top: 0,
              right: -20.w,
              child: Container(
                height: 20.h,
                width: 35.w,
                decoration: BoxDecoration(
                    color: AppColors.primaryBackgroundColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Center(
                    child: Text(
                  status,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}