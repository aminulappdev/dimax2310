
import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/logo_container.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,        
      child: Drawer(
         backgroundColor: AppColors.secondaryBackgroundColor,
          child: Padding(
            padding:  EdgeInsets.all(16.0),
            child: Column(
              children: [
                heightBox50,
                LogoContainer(
                    logoPath: AssetsPath.logo1black, logoRadius: 60),
                heightBox16,
                
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(AssetsPath.village),
                ),
                heightBox10,
               
                Text(
                  'Hey Max!',
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                heightBox20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mein Account',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    heightBox20,
                    Text(
                      'Favoriten',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    heightBox20,
                    Text(
                      'Top Empfehlungen Meiner Freunde',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    heightBox20,
                    Text(
                      'Letzte Bewertungen',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                   heightBox20,
                    Text(
                      'Historie für Chats',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                     heightBox20,
                    Text(
                      'Abstimmungen',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
