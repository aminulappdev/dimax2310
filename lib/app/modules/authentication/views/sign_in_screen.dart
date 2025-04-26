import 'package:dimax2310/app/modules/authentication/views/location_page.dart';
import 'package:dimax2310/app/modules/authentication/views/main_buttom_bar_screen.dart';
import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/custom_elevated_button.dart';
import 'package:dimax2310/app/widgets/logo_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heightBox100,
              LogoContainer(
                logoPath: AssetsPath.logo2white,
                logoRadius: 150,
              ),
              heightBox30,
              Form(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: 'example@gmail.com'),
                      ),
                      heightBox16,
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: '* * * * * * * *'),
                      ),
                      heightBox16,
                    ],
                  ),
                ),
              ),
              heightBox20,
              CustomElevatedButton(
                backgroundColor: AppColors.buttonBackgroundColor,
                name: 'Anmelden',
                ontap: () {
                  Get.to(MainNavigationBar());
                },
              ),
              heightBox12,
              SizedBox(
                width: 250.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Noch Rein Konto?',
                      style: TextStyle(color: Colors.white),
                    ),
                    widthBox14,
                    Text(
                      'Registcigcen',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              heightBox12,
              Container(
                color: Colors.transparent,
                width: 300.w,
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(

                      'Weiter mit',
                      style: TextStyle(color: Colors.white),
                    ),
                    widthBox14,
                    Row(
                     
                      children: [
                       Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(AssetsPath.google))
                      ),
                    ),
                    widthBox5,
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(AssetsPath.fb))
                      ),
                    ),
                    widthBox5,
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(AssetsPath.x))
                      ),
                    )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
