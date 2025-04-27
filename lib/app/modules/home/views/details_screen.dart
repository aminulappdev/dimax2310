
import 'package:dimax2310/app/modules/home/widgets/review_row.dart';
import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/image_container.dart';
import 'package:dimax2310/app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(size: 40, color: Colors.white),
        title: Image(
          image: AssetImage(AssetsPath.logo1white),
          height: 45,
          width: 45,
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryBackgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      size: 30,
                    )),
              ),
              heightBox12,
              Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(AssetsPath.village),
                        fit: BoxFit.fill)),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.bookmark_outline_sharp,
                      color: Colors.white,
                      size: 40,
                    )),
              ),
              heightBox10,
              Text(
                'Mamma Maglioné',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here making it look like readable English.',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              heightBox10,
              ReviewRow(
                reviewTitle: 'Bewertungen (245)',
                review: StarRating(
                  rating: 3.5,
                  filledIcon: Icons.star,
                  halfFilledIcon: Icons.star,
                  emptyIcon: Icons.star_border_outlined, 
                  color: AppColors.primaryBackgroundColor,
                  borderColor: Colors.grey,
                  onRatingChanged: (rating) => () {},
                ),
                revieRate: '4/5',
                amountTitle: 'Preiskategorie',
                amount: '15-20\$',
              ),
              heightBox20,
              ReviewRow(
                reviewTitle: 'Score für dich',
                review: Container(
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.primaryBackgroundColor),
                ),
                revieRate: '4/5',
                amountTitle: 'Preiskategorie',
                amount: 'Ca 2 km',
              ),
              heightBox20,
              Text(
                'Gerichte',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              heightBox10,
              SizedBox(
                height: 115,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Column(
                        children: [
                          ImageContainer(
                            height: 80,
                            width: 130,
                            radius: 10,
                            imagePath: AssetsPath.village,
                          ),
                          Text('Pizza')
                        ],
                      ),
                    );
                  },
                ),
              ),
              Text(
                'Jertz sokcket programming app',
                style: TextStyle(
                    fontSize: 14, 
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    color: AppColors.primaryBackgroundColor),
              ),
              Text(
                'Jertz sokcket programming',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    color: AppColors.primaryBackgroundColor),
              ),
              heightBox40
            ],
          ),
        ),
      ),
    );
  }
}
