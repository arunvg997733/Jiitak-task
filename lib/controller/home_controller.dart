import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;
  List<bool> likeList = [false,false,false,false,false,false];
  List<String> calenderChineseList = [
    '木',
    '金',
    '土',
    '日',
    '月',
    '火',
    '水',
    '木',
    '金',
    '土',
    '日',
    '月',
    '火',
    '水',
    '木',
    '金',
    '土',
    '日',
    '月',
    '火',
    '水',
    '木',
    '金',
    '土',
    '日',
    '月',
    '火',
    '水',
    '木',
    '金',
    '土',
  ];
  List<int> calenderDateList = [
    26,
    27,
    28,
    29,
    30,
    31,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25
  ];

  onTap(int value) {
    currentIndex.value = value;
    update();
  }

  likeUnlike(int index){
    if(likeList[index] == false ){
      likeList[index] = true;
      Get.snackbar("Success", "liked");
    }else{
      likeList[index] = false;
      Get.snackbar("Success", "Disliked");
    }
    update();
  }
}
