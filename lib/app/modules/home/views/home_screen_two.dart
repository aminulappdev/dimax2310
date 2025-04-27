import 'package:dimax2310/app/modules/home/widgets/circular_status_widget.dart';
import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({super.key});

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  final ScrollController _scrollController = ScrollController();

  final Random random = Random(); // random height এর জন্য

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.transparent,
              height: 70.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CircularStatus(
                    imagePath: AssetsPath.village,
                    status: 'News',
                  );
                },
              ),
            ),
            heightBox8,
            Text(
              'Das Cfällt deinen Freunden:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            heightBox4,
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AssetsPath.food),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 196, 195, 193)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.secondaryBackgroundColor,),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '17, February',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          StarRating(
                                            rating: 3.5,
                                            filledIcon: Icons.star,
                                            halfFilledIcon: Icons.star,
                                            emptyIcon:
                                                Icons.star_border_outlined,
                                            color: AppColors
                                                .primaryBackgroundColor,
                                            borderColor: Colors.grey,
                                            onRatingChanged: (rating) => () {},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundImage:
                                                AssetImage(AssetsPath.village),
                                          ),
                                          widthBox8,
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Sam Courtlan',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Text(
                                                'Tocco stand in Hamburg',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Leckerste Tacos ever!! Must try für alle Tocco-Liebhaber Günstig und auch in vegan — mehr',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      )),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
