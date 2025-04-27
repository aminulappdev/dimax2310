import 'package:dimax2310/app/modules/home/views/details_screen.dart';
import 'package:dimax2310/app/modules/home/widgets/circular_status_widget.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
  ];

  final ScrollController _scrollController = ScrollController();
  int _loadedItemCount = 15;

  final Random random = Random(); // random height এর জন্য

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMoreItems);
  }

  void _loadMoreItems() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      if (_loadedItemCount < allImages.length) {
        setState(() {
          _loadedItemCount += 15;
          if (_loadedItemCount > allImages.length) {
            _loadedItemCount = allImages.length;
          }
        });
      }
    }
  }

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
            Text(
              'Das Konnte dir gefallen:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            heightBox10,
            Expanded(
              child: MasonryGridView.count(
                padding: EdgeInsets.zero,
                controller: _scrollController,
                crossAxisCount: 3,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                itemCount: _loadedItemCount,
                itemBuilder: (context, index) {
                  double randomHeight = (150 + random.nextInt(150)).toDouble();
                  return InkWell(
                    onTap: () {
                      Get.to(DetailsScreen());
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.grey.shade300,
                        height: randomHeight,
                       child: Image(image: AssetImage(allImages[index]),fit: BoxFit.fill,)
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
