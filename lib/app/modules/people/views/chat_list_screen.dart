
import 'package:dimax2310/app/modules/people/views/message_screen.dart';
import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(size: 40, color: Colors.black),
        title: Image(
          image: AssetImage(AssetsPath.logo1black),
          height: 45,
          width: 45,
        ),
        centerTitle: true,
        backgroundColor: AppColors.secondaryBackgroundColor,
      ),
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
            SizedBox(
              height: 550,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Card(
                      elevation: 1,
                      child: InkWell(
                        onTap: () {
                         Get.to( ChatScreen());
                        },
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.secondaryBackgroundColor),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [ 
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage(AssetsPath.village),
                                    ),
                                    widthBox8,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Sam Courtlan',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        heightBox4,
                                        Text(
                                          'Hi. How are you ?',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.notifications_none_outlined,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            heightBox20,
            Center(
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.secondaryBackgroundColor),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Freund in hinzufügen',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      widthBox5,
                      Icon(
                        Icons.qr_code,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
