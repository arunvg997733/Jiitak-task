import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jiitaktask/controller/home_controller.dart';
import 'package:jiitaktask/core/constant.dart';
import 'package:jiitaktask/view/widget/widget.dart';

class PostContainerWidget extends StatelessWidget {
  const PostContainerWidget(
      {super.key,
      required this.width,
      required this.getHome,
      required this.index});

  final double width;
  final HomeController getHome;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kCwhite,
              ),
              height: width * 1.25,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: width * 0.55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/J image ${index + 1}.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textWidget(
                            text: '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                            color: kBlack,
                            size: 12.sp),
                        kHeight10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: kTextBG,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: textWidget(
                                  text: '介護付き有料老人ホーム',
                                  color: kYellow,
                                  size: 12.sp,
                                ),
                              ),
                            ),
                            textWidget(
                              text: index == 0 ?'¥ 6,000':'6,000円 ',
                              color: kBlack,
                              size: 20.sp,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                        kHeight10,
                        textWidget(
                          text: '5月 31日（水）08 : 00 ~ 17 : 00',
                          color: kBlack,
                          size: 12.sp,
                        ),
                        kHeight5,
                        textWidget(
                          text: '北海道札幌市東雲町3丁目916番地17号',
                          color: kBlack,
                          size: 12.sp,
                        ),
                        kHeight5,
                        textWidget(
                          text: '交通費 300円',
                          color: kBlack,
                          size: 12.sp,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textWidget(
                              text: '住宅型有料老人ホームひまわり倶楽部',
                              color: kGrey,
                              size: 12.sp,
                            ),
                            InkWell(
                              onTap: () {
                                getHome.likeUnlike(index);
                              },
                              child: GetBuilder<HomeController>(
                                builder: (controller) {
                                  return controller.likeList[index] == false
                                      ? iconWidget(
                                          icon: Icons.favorite_outline_rounded,
                                          color: kGrey,
                                          size: 25.sp,
                                        )
                                      : iconWidget(
                                          icon: Icons.favorite_rounded,
                                          color: kRed,
                                          size: 25.sp,
                                        );
                                },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 150.sp,
            child: Container(
              decoration: BoxDecoration(
                color: klateRed,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.sp,
                  vertical: 5.sp,
                ),
                child: textWidget(
                  text: '本日まで',
                  color: kWhite,
                  size: 15.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HorizontalListViewWidget extends StatelessWidget {
  const HorizontalListViewWidget({
    super.key,
    required this.width,
    required this.getHome,
  });

  final double width;
  final HomeController getHome;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: width * 0.2,
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    getHome.onTap(index);
                  },
                  child: Container(
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      color:
                          getHome.currentIndex.value == index ? kYellow : null,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textWidget(
                          text: getHome.calenderChineseList[index],
                          color: getHome.currentIndex.value == index
                              ? kWhite
                              : kBlack,
                          size: 15.sp,
                          weight: FontWeight.bold,
                        ),
                        kHeight5,
                        textWidget(
                          text: getHome.calenderDateList[index].toString(),
                          color: getHome.currentIndex.value == index
                              ? kWhite
                              : kBlack,
                          size: 15.sp,
                          weight: FontWeight.bold,
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return kWidth20;
              },
              itemCount: getHome.calenderDateList.length,
            );
          },
        ),
      ),
    );
  }
}

class SecondHeadHomeWidget extends StatelessWidget {
  const SecondHeadHomeWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width * 0.1,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            kYellow,
            kLateYellow,
            kLateYellow,
          ],
        ),
      ),
      child: Center(
        child: textWidget(
          text: "2022年 5月 26日（木）",
          color: kBlack,
          size: 14.sp,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 35.sp,
              decoration: BoxDecoration(
                color: klateGreyTextfield,
                borderRadius: BorderRadius.circular(50.sp),
              ),
              child: Row(
                children: [
                  kWidth20,
                  textWidget(
                    text: '北海道, 札幌市',
                    color: kBlack,
                    size: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
          kWidth10,
          Container(
            height: 35.sp,
            width: 35.sp,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Filter_icon.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          kWidth10,
          iconWidget(
            icon: Icons.favorite_outline_rounded,
            color: kRed,
            size: 35.sp,
          ),
        ],
      ),
    );
  }
}
