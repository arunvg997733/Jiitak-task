import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jiitaktask/controller/bottom_nav_controller.dart';
import 'package:jiitaktask/core/constant.dart';
import 'package:jiitaktask/view/edit_store_screen/edit_screen.dart';
import 'package:jiitaktask/view/home_screen/home_screen.dart';
import 'package:jiitaktask/view/message_screen/message_screen.dart';
import 'package:jiitaktask/view/profile_screen/profile_screen.dart';
import 'package:jiitaktask/view/stamp_screen/stamp_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final getNav = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    List homePages = [
      HomeScreen(),
      StampScreen(),
      const EditScreen(),
      const MessageScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
      body: SafeArea(child: Obx(() => homePages[getNav.currentIndex.value])),
      floatingActionButton: InkWell(
        onTap: () {
          getNav.onTap(2);
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/scan-line.png'),
                  fit: BoxFit.scaleDown),
              borderRadius: BorderRadius.circular(50.sp),
              gradient: const LinearGradient(
                  colors: [kYellow, kLateYellow, kLateYellow])),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: (value) {
            getNav.onTap(value);
          },
          currentIndex: getNav.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          enableFeedback: false,
          showUnselectedLabels: true,
          unselectedItemColor: kBlack,
          unselectedIconTheme: const IconThemeData(color: kBlack),
          selectedIconTheme: const IconThemeData(color: kYellow),
          selectedItemColor: kYellow,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'さがす',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'お仕事',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: 'さがす',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'チャット',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: 'マイ ページ',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
