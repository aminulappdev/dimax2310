import 'package:dimax2310/app/modules/home/views/details_screen.dart';
import 'package:dimax2310/app/modules/people/views/chat_list_screen.dart';
import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class PeopleOnboardingScreen extends StatefulWidget {
  const PeopleOnboardingScreen({super.key});

  @override
  State<PeopleOnboardingScreen> createState() => _PeopleOnboardingScreenState();
}

class _PeopleOnboardingScreenState extends State<PeopleOnboardingScreen> {
  final List<String> allImages = [
    AssetsPath.village,
    AssetsPath.party,
    AssetsPath.date,
    AssetsPath.rustical,
    AssetsPath.village,
    AssetsPath.village,
    AssetsPath.party,
    AssetsPath.date,
    AssetsPath.rustical,
    AssetsPath.village,
    AssetsPath.village,
    AssetsPath.party,
    AssetsPath.date,
    AssetsPath.rustical,
    AssetsPath.village,
    AssetsPath.village,
    AssetsPath.party,
    AssetsPath.date,
    AssetsPath.rustical,
    AssetsPath.village,
    AssetsPath.village,
    AssetsPath.party,
  ];

  final ScrollController _scrollController = ScrollController();
  final Random random = Random();
  
  // Store random height for each item
  late List<double> heights;

  @override
  void initState() {
    super.initState();
    // Generate random heights when the widget is initialized
    heights = List.generate(allImages.length, (index) => 120 + random.nextInt(80).toDouble());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 35, right: 35, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightBox30,
            Text(
              'Deine Freunde:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            heightBox10,
            Container(
              decoration: BoxDecoration(
                  color: AppColors.secondaryBackgroundColor,
                  borderRadius: BorderRadius.circular(20)),
              height: 580,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(AssetsPath.village),
                        ),
                        widthBox10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sam Courtland',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                            SizedBox(
                                width: 200,
                                child: Text(
                                  'Ich kiebe Tacos! (Und meine drau natuulich)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                )),
                          ],
                        )
                      ],
                    ),
                    heightBox8,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: 420, // Fixed height for grid
                      child: MasonryGridView.count(
                        padding: EdgeInsets.zero,
                        controller: _scrollController,
                        physics: NeverScrollableScrollPhysics(), // Scroll bondho
                        crossAxisCount: 3, // 3 columns
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.to(DetailsScreen());
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: heights[index], // Set random height for each image
                                color: Colors.grey.shade300,
                                child: Image.asset(
                                  allImages[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    heightBox10,
                    Text(
                      'Favorriten',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          color: AppColors.primaryBackgroundColor),
                    ),
                    Text(
                      'Letzer Besusch',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          color: AppColors.primaryBackgroundColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
