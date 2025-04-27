import 'package:dimax2310/app/modules/people/widgets/chatting_field_widget.dart';
import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:dimax2310/app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> messageList = [
    {"text": "I have some loads, can you transfer them to Dhaka safely?", "isSent": true},
    {"text": "Oh it’s okay.", "isSent": false},
    {"text": "Next time, we will meet again", "isSent": true},
    {"text": "Oh it’s okay i like it too babe", "isSent": false},
    {"text": "Okay see you soon very soon", "isSent": true},
  ];

  final TextEditingController _textController = TextEditingController();
  bool _isTyping = false;

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {
        _isTyping = _textController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

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
        padding: EdgeInsets.all(12.h),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(AssetsPath.village),
                ),
                widthBox10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sam Courtland',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Ich kiebe Tacos! (Und meine drau natuulich)',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10.r),
                itemCount: messageList.length,
                itemBuilder: (context, index) {
                  final message = messageList[index];
                  return Align(
                    alignment: message['isSent'] ? Alignment.centerRight : Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: message['isSent'] ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                      children: [
                        message['isSent']
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage: AssetImage(AssetsPath.village),
                                  ),
                                ],
                              )
                            : CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage(AssetsPath.village),
                              ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                          decoration: BoxDecoration(
                            color: message['isSent']
                                ? AppColors.primaryBackgroundColor
                                : AppColors.secondaryBackgroundColor,
                            borderRadius: BorderRadius.only(
                              topLeft: message['isSent'] ? Radius.circular(16.r) : Radius.circular(0.r),
                              topRight: message['isSent'] ? Radius.circular(0.r) : Radius.circular(16.r),
                              bottomLeft: Radius.circular(16.r),
                              bottomRight: Radius.circular(16.r),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                message['text'],
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: message['isSent'] ? Colors.white : Colors.black,
                                ),
                              ),
                              Text(
                                '8:40 AM',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: message['isSent'] ? Colors.white : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 70.h,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 290.w,
                    child: ChattingFieldWidget(controller: _textController),
                  ),
                  widthBox8,
                  GestureDetector(
                    onTap: () {
                      if (_isTyping) {
                        // Send Message
                        print('Sending: ${_textController.text}');
                        _textController.clear();
                      } else {
                        // Start Recording
                        print('Start Recording...');
                      }
                    },
                    child: Container(
                      height: 50.h,
                      width: 50.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackgroundColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Icon(
                          _isTyping ? Icons.send : Icons.mic,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
