import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitaktask/controller/home_controller.dart';
import 'package:jiitaktask/view/home_screen/widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final getHome = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SearchWidget(),
          SecondHeadHomeWidget(width: width),
          HorizontalListViewWidget(width: width, getHome: getHome),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return PostContainerWidget(width: width, getHome: getHome,index: index,);
            },
            itemCount: 6,
          )
        ],
      ),
    );
  }
}


