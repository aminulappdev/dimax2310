import 'dart:io';

import 'package:dimax2310/app/modules/authentication/views/location_page.dart';
import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/custom_elevated_button.dart';
import 'package:dimax2310/app/widgets/image_picker.dart';
import 'package:dimax2310/app/widgets/logo_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  File? profileImage;
  File? coverImage;
  final ImagePickerHelper _imagePickerHelper = ImagePickerHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heightBox30,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 30.h,
                      )),
                  Text(
                    'DE/ENG',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  )
                ],
              ),
              LogoContainer(
                logoPath: AssetsPath.logo1white,
                logoRadius: 80,
              ),
              heightBox8,
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 110.h,
                    width: 110.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.buttonBackgroundColor),
                    child: CircleAvatar(
                      radius: 40.r,
                      child: profileImage != null
                          ? ClipOval(
                              child: Image.file(
                                profileImage!,
                                width: 100.w,
                                height: 100.h,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Container(),
                    ),
                  ),
                  Positioned(
                    
                    right: 0,
                  
                    bottom: -10,
                    child: IconButton(
                      onPressed: () {
                        _imagePickerHelper.showAlertDialog(
                          context,
                          (File pickedImage) {
                            setState(
                              () {
                                profileImage = pickedImage;
                              },
                            );
                          },
                        );
                      },
                      icon: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(
                          Icons.person_outline_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              heightBox30,
              Form(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Enter value';
                          }
                          return null;
                        },
                        decoration: InputDecoration(hintText: 'Vorname'),
                      ),
                      heightBox16,
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Enter value';
                          }
                          return null;
                        },
                        decoration: InputDecoration(hintText: 'Nachname'),
                      ),
                      heightBox16,
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Enter value';
                          }
                          return null;
                        },
                        decoration: InputDecoration(hintText: 'Geburtstag'),
                      ),
                      heightBox16,
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Enter value';
                          }
                          return null;
                        },
                        decoration: InputDecoration(hintText: 'Geschlecht'),
                      ),
                      heightBox16,
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Enter value';
                          }
                          return null;
                        },
                        decoration: InputDecoration(hintText: 'Adresse'),
                      ),
                      heightBox16,
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Enter value';
                          }
                          return null;
                        },
                        decoration: InputDecoration(hintText: 'Email'),
                      ),
                      heightBox16,
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Enter value';
                          }
                          return null;
                        },
                        decoration: InputDecoration(hintText: 'Password'),
                      ),
                      heightBox16,
                    ],
                  ),
                ),
              ),
              heightBox20,
              CustomElevatedButton(
                backgroundColor: AppColors.buttonBackgroundColor,
                name: 'Jetzt registrieren',
                ontap: () {
                  Get.to(LocationScreen());
                },
              ),
              heightBox100
            ],
          ),
        ),
      ),
    );
  }
}
