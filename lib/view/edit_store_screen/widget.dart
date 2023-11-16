import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiitaktask/core/constant.dart';
import 'package:jiitaktask/view/widget/widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18.sp,
          backgroundColor: kGrey,
          child: iconWidget(
              icon: Icons.arrow_back_ios_new, color: kWhite, size: 15.sp),
        ),
        Expanded(
            child: Center(
                child: textWidget(
                    text: '店舗プロフィール編集', color: kBlack, size: 15.sp))),
        iconWidget(
            icon: Icons.notifications_none_sharp, color: kBlack, size: 25.sp),
      ],
    );
  }
}

class NullImageWidget extends StatelessWidget {
  const NullImageWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width * 0.25,
      width: width * 0.25,
      decoration: BoxDecoration(
          border: Border.all(color: kGrey),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconWidget(icon: Icons.image_outlined, color: kGrey, size: 35.sp),
          textWidget(text: '写真を追加', color: kGrey, size: 12.sp)
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.sp,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFEE7D42), Color(0xFFFFC7AB)])),
      child: Center(
          child: textWidget(
              text: '編集を保存',
              color: kWhite,
              size: 15.sp,
              weight: FontWeight.bold)),
    );
  }
}

class AmountWidget extends StatelessWidget {
  const AmountWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 35.sp,
          width: width * 0.3,
          decoration: BoxDecoration(
              border: Border.all(color: kGrey),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kWidth10,
              textWidget(text: '¥ 1,000', color: kBlack, size: 14.sp),
            ],
          ),
        ),
        kWidth10,
        textWidget(text: '〜', color: kBlack, size: 14.sp),
        kWidth10,
        Container(
          height: 35.sp,
          width: width * 0.3,
          decoration: BoxDecoration(
              border: Border.all(color: kGrey),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kWidth10,
              textWidget(text: '¥ 2,000', color: kBlack, size: 14.sp),
            ],
          ),
        ),
      ],
    );
  }
}

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.sp,
      width: width * 0.5,
      decoration: BoxDecoration(
          border: Border.all(color: kGrey),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          textWidget(text: '料理カテゴリー選択', color: kGrey, size: 14.sp),
          kWidth10,
          iconWidget(icon: Icons.keyboard_arrow_down, color: kGrey, size: 20.sp)
        ],
      ),
    );
  }
}

class TickWidget extends StatelessWidget {
  const TickWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        iconWidget(icon: Icons.check_box, color: kOrenagetick, size: 25.sp),
        kWidth5,
        textWidget(text: text, color: kBlack, size: 12.sp)
      ],
    );
  }
}

class TickOutLineWidget extends StatelessWidget {
  const TickOutLineWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        iconWidget(
            icon: Icons.check_box_outline_blank, color: kGrey, size: 25.sp),
        kWidth5,
        textWidget(text: text, color: kBlack, size: 12.sp)
      ],
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.width,
    required this.sTime,
    required this.eTime,
  });

  final double width;
  final String sTime;
  final String eTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 35.sp,
          width: width * 0.3,
          decoration: BoxDecoration(
              border: Border.all(color: kGrey),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              textWidget(text: sTime, color: kBlack, size: 12.sp),
              kWidth10,
              iconWidget(
                  icon: Icons.keyboard_arrow_down, color: kGrey, size: 20.sp)
            ],
          ),
        ),
        kWidth10,
        textWidget(text: '〜', color: kBlack, size: 14.sp),
        kWidth10,
        Container(
          height: 35.sp,
          width: width * 0.3,
          decoration: BoxDecoration(
              border: Border.all(color: kGrey),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              textWidget(text: eTime, color: kBlack, size: 12.sp),
              kWidth10,
              iconWidget(
                  icon: Icons.keyboard_arrow_down, color: kGrey, size: 20.sp)
            ],
          ),
        ),
      ],
    );
  }
}

class ThreeImageWidgets extends StatelessWidget {
  const ThreeImageWidgets({
    super.key,
    required this.width,
    required this.image1,
    required this.image2,
    required this.image3,
  });

  final double width;
  final String image1;
  final String image2;
  final String image3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GridContainerWidget(width: width, image: image1),
        kWidth10,
        GridContainerWidget(width: width, image: image2),
        kWidth10,
        GridContainerWidget(width: width, image: image3),
      ],
    );
  }
}

class GridContainerWidget extends StatelessWidget {
  const GridContainerWidget({
    super.key,
    required this.width,
    required this.image,
  });

  final double width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: width * 0.25,
          width: width * 0.25,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5)),
        ),
        Positioned(
            top: 10,
            right: 10,
            child: iconWidget(icon: Icons.close, color: kWhite, size: 20.sp))
      ],
    );
  }
}

class QuestionWidget1 extends StatelessWidget {
  const QuestionWidget1({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        textWidget(text: text, color: kBlack, size: 12.sp),
        textWidget(text: '*', color: kOrange, size: 12.sp)
      ],
    );
  }
}

class EditTextContainer extends StatelessWidget {
  const EditTextContainer({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.sp,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: kGrey),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          kWidth20,
          textWidget(text: text, color: kBlack, size: 12.sp),
        ],
      ),
    );
  }
}

class QuestionWidget2 extends StatelessWidget {
  const QuestionWidget2({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        textWidget(text: text1, color: kBlack, size: 12.sp),
        textWidget(text: '*', color: kOrange, size: 12.sp),
        kWidth10,
        textWidget(text: '($text2)', color: kGrey, size: 12.sp),
      ],
    );
  }
}
