import 'package:dimax2310/app/modules/authentication/views/lifestyle_screen.dart';
import 'package:dimax2310/app/modules/authentication/widgets/selected_card.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/logo_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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
          LogoContainer(
            logoPath: AssetsPath.logo1white,
            logoRadius: 80,
          ),
          heightBox12,
          SizedBox(
              width: 250,
              child: Text(
                'Wo siehst du dich eher? (Wähle aus)',
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              )),
          heightBox12,
          SelectedCard(
            op1Name: 'City life',
            op1ImagePath: AssetsPath.city,
            op1Ontap: () {
              Get.to(
                LifeStyleScreen(),
              );
            },
            op2Name: 'Country side',
            op2ImagePath: AssetsPath.village,
            op2Ontap: () {
              Get.to(
                LifeStyleScreen(),
              );
            },
          )
        ],
      ),
    );
  }
}
