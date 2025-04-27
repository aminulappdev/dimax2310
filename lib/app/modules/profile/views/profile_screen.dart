import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/logo_container.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            heightBox50,
            LogoContainer(logoPath: AssetsPath.logo1black, logoRadius: 90),
            heightBox12,
            SizedBox(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dein Profile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  widthBox8,
                  GestureDetector(onTap: () {}, child: Icon(Icons.edit))
                ],
              ),
            ),
            heightBox16,
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(AssetsPath.village),
            ),
            heightBox16,
            Icon(
              Icons.qr_code_scanner_outlined,
              size: 60,
            ),
            heightBox16,
            Text(
              'Max Bartels',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            heightBox16,
            Text(
              'Mdnnlich',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            heightBox16,
            Text(
              '07.05.00',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            heightBox16,
            Text(
              'maxijanz@gmx.de',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            heightBox16,
            Text(
              'Favoriten',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            heightBox16,
            Text(
              'Einstellungen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
