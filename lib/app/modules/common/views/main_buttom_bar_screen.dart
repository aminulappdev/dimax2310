import 'package:dimax2310/app/modules/home/views/home_screen.dart';
import 'package:dimax2310/app/modules/home/views/home_screen_two.dart';
import 'package:dimax2310/app/modules/people/views/people_onboarding_screen.dart';
import 'package:dimax2310/app/modules/profile/views/profile_screen.dart';
import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/assets_path.dart';
import 'package:dimax2310/app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreenTwo(),
    PeopleOnboardingScreen(),
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _currentIndex == 3
          ? null
          : MyDrawer(),
      appBar: _currentIndex == 3
          ? null
          : AppBar(
              iconTheme: IconThemeData(size: 40, color: Colors.black),
              title: Image(
                image: AssetImage(AssetsPath.logo1black),
                height: 45,
                width: 45,
              ),
              centerTitle: true,
              backgroundColor: AppColors.secondaryBackgroundColor,
            ),
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryBackgroundColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) => buildNavItem(index)),
        ),
      ),
      floatingActionButton: _currentIndex == 0
          ? Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: AppColors.primaryBackgroundColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Center(
                  child: Text(
                'new chat',
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
            )
          : Container(),
    );
  }

  Widget buildNavItem(int index) {
    bool isSelected = index == _currentIndex;

    IconData iconData;
    switch (index) {
      case 0:
        iconData = Icons.home;
        break;
      case 1:
        iconData = Icons.group;
        break;
      case 2:
        iconData = Icons.calendar_today;
        break;
      case 3:
        iconData = Icons.person;
        break;
      default:
        iconData = Icons.home;
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          iconData,
          size: isSelected ? 30 : 26,
          color: isSelected ? const Color(0xFF264D26) : Colors.white,
        ),
      ),
    );
  }
}
