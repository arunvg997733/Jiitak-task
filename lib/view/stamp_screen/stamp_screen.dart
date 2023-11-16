import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jiitaktask/controller/stamp_page_controller.dart';
import 'package:jiitaktask/core/constant.dart';
import 'package:jiitaktask/view/stamp_screen/widget.dart';
import 'package:jiitaktask/view/widget/widget.dart';

class StampScreen extends StatelessWidget {
  StampScreen({super.key});

  final getStamp = Get.put(StampScreenController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        height: width * 2,
        width: double.infinity,
        color: kBlueBG,
        child: Column(
          children: [
            const StampAppBarWidget(),
            const StampSecondHeadWidget(),
            kHeight30,
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: kWhite),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.sp,
                    ),
                    PageViewWidget(width: width, getStamp: getStamp),
                    PageNumberWidget(getStamp: getStamp),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: textWidget(
                          text: 'スタンプ獲得履歴',
                          color: kBlack,
                          size: 14.sp,
                          weight: FontWeight.bold),
                    ),
                    const ListViewWidget()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
