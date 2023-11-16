import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jiitaktask/controller/stamp_page_controller.dart';
import 'package:jiitaktask/core/constant.dart';
import 'package:jiitaktask/view/widget/widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTileWidget(
                index: index,
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: 5),
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(
              text: '2021 / 11 / ${18 - index}', color: kGrey, size: 12.sp),
          kHeight5,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textWidget(text: 'スタンプを獲得しました。', color: kBlack, size: 12.sp),
              textWidget(
                  text: index != 4 ?'1 個':'',
                  color: kBlack,
                  size: 15.sp,
                  weight: FontWeight.bold)
            ],
          )
        ],
      ),
    );
  }
}

class PageNumberWidget extends StatelessWidget {
  const PageNumberWidget({
    super.key,
    required this.getStamp,
  });

  final StampScreenController getStamp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Obx(
            () => textWidget(
                text: '${getStamp.currentIndex} / 2枚目',
                color: kBlack,
                size: 15.sp),
          )
        ],
      ),
    );
  }
}

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    super.key,
    required this.width,
    required this.getStamp,
  });

  final double width;
  final StampScreenController getStamp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width * 0.6,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        onPageChanged: (value) {
          getStamp.onChange(value);
        },
        itemCount: 2,
        controller: PageController(
            viewportFraction: 0.85,
            initialPage: getStamp.currentIndex.value - 1),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kCwhite,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    color: kGrey,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 5,
                  children: List.generate(
                    15,
                    (index) => iconWidget(
                        icon: Icons.verified_rounded,
                        color: klateRed,
                        size: 45.sp),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class StampSecondHeadWidget extends StatelessWidget {
  const StampSecondHeadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          textWidget(
            text: 'Mer キッチン',
            color: kWhite,
            size: 14.sp,
          ),
          Row(
            children: [
              textWidget(
                text: '現在の獲得数',
                color: kWhite,
                size: 14.sp,
              ),
              kWidth5,
              textWidget(
                  text: '30',
                  color: kWhite,
                  size: 25.sp,
                  weight: FontWeight.w500),
              kWidth5,
              textWidget(
                text: '個',
                color: kWhite,
                size: 14.sp,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class StampAppBarWidget extends StatelessWidget {
  const StampAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18.sp,
            backgroundColor: kBlueIcon,
            child: iconWidget(
                icon: Icons.arrow_back_ios_new, color: kWhite, size: 15.sp),
          ),
          Expanded(
            child: Center(
              child: textWidget(
                text: 'スタンプカード詳細',
                color: kWhite,
                size: 14.sp,
              ),
            ),
          ),
          iconWidget(
              icon: Icons.remove_circle_outline, color: kWhite, size: 25.sp)
        ],
      ),
    );
  }
}
