import 'package:dimax2310/app/modules/authentication/views/sign_in_screen.dart';
import 'package:dimax2310/app/modules/authentication/widgets/selected_card.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/logo_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override 
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
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
            op1Name: 'Fast Food',
            op1ImagePath: AssetsPath.food,
            op1Ontap: () {
              Get.to(
                SignInScreen(),
              );
            },
            op2Name: 'Slow Food',
            op2ImagePath: AssetsPath.slow,
            op2Ontap: () {
              Get.to(
                SignInScreen(),
              );
            },
          )
        ],
      ),
    );
  }
}
