import 'package:dimax2310/app/modules/authentication/views/food_screen.dart';
import 'package:dimax2310/app/modules/authentication/widgets/selected_card.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/logo_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NightScreen extends StatefulWidget {
  const NightScreen({super.key});

  @override 
  State<NightScreen> createState() => _NightScreenState();
}

class _NightScreenState extends State<NightScreen> {
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
            op1Name: 'Party Night',
            op1ImagePath: AssetsPath.party,
            op1Ontap: () {
              Get.to(
                FoodScreen(),
              );
            },
            op2Name: 'Date Night',
            op2ImagePath: AssetsPath.date,
            op2Ontap: () {
              Get.to(
                FoodScreen(),
              );
            },
          )
        ],
      ),
    );
  }
}
