import 'package:dimax2310/app/modules/authentication/views/night_screen.dart';
import 'package:dimax2310/app/modules/authentication/widgets/selected_card.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/logo_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LifeStyleScreen extends StatefulWidget {
  const LifeStyleScreen({super.key});

  @override 
  State<LifeStyleScreen> createState() => _LifeStyleScreenState();
}

class _LifeStyleScreenState extends State<LifeStyleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          heightBox100,
          LogoContainer(logoPath: AssetsPath.logo1white,logoRadius: 80,),
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
            op1Name: 'Modern',
            op1ImagePath: AssetsPath.mordern,
            op1Ontap: () {
              Get.to(
                NightScreen(),
              );
            },
            op2Name: 'Rustical',
            op2ImagePath: AssetsPath.rustical,
            op2Ontap: () {
              Get.to(
                NightScreen(),
              );
            },
          )
        ],
      ),
    );
  }
}
