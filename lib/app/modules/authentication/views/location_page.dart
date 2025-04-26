import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/logo_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override 
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          heightBox100,
          LogoContainer(logoPath: AssetsPath.logo1white,logoRadius: 45,),
          heightBox12,
          SizedBox(
              width: 250,
              child: Text(
                'Wo siehst du dich eher? (Wähle aus)',
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              )),
          heightBox12,
          Container(
            height: 500.h,
            width: 350.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.buttonBackgroundColor),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(AssetsPath.village),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange),
                    ),
                  ),
                  heightBox14,
                  Text(
                    'City life',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  heightBox40,
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(AssetsPath.village),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange),
                    ),
                  ),
                  heightBox14,
                  Text(
                    'Country side',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
