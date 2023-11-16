import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiitaktask/core/constant.dart';
import 'package:jiitaktask/view/widget/widget.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: textWidget(text: 'Messages', color: kBlack, size: 15.sp),
      ),
    );
  }
}
