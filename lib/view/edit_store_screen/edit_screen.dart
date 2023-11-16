import 'package:flutter/material.dart';
import 'package:jiitaktask/core/constant.dart';
import 'package:jiitaktask/view/edit_store_screen/widget.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: AppBarWidget(),
          ),
          const Divider(
            color: kBlack,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const QuestionWidget1(text: '店舗名'),
                const EditTextContainer(text: 'Mer キッチン'),
                kHeight20,
                const QuestionWidget1(text: '代表担当者名'),
                const EditTextContainer(text: '林田　絵梨花'),
                kHeight20,
                const QuestionWidget1(text: '店舗電話番号'),
                const EditTextContainer(text: '123 - 4567 8910'),
                kHeight20,
                const QuestionWidget1(text: '店舗住所'),
                const EditTextContainer(text: '大分県豊後高田市払田791-13'),
                kHeight20,
                Container(
                  height: width * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                          image: AssetImage('assets/map.png'),
                          fit: BoxFit.cover)),
                ),
                kHeight10,
                const QuestionWidget2(text1: '店舗外観', text2: '最大3枚まで'),
                kHeight5,
                Row(
                  children: [
                    GridContainerWidget(
                        width: width, image: 'assets/edit/editimage1.png'),
                    kWidth10,
                    GridContainerWidget(
                        width: width, image: 'assets/edit/editimage1.png'),
                    kWidth10,
                    NullImageWidget(width: width),
                  ],
                ),
                kHeight10,
                const QuestionWidget2(text1: '店舗内観', text2: '1枚〜3枚ずつ追加してください'),
                kHeight5,
                ThreeImageWidgets(
                  width: width,
                  image1: 'assets/edit/editimage2.png',
                  image2: 'assets/edit/editimage2.png',
                  image3: 'assets/edit/editimage2.png',
                ),
                kHeight10,
                const QuestionWidget2(text1: '料理写真', text2: '1枚〜3枚ずつ追加してください'),
                kHeight5,
                ThreeImageWidgets(
                  width: width,
                  image1: 'assets/edit/editimage3.png',
                  image2: 'assets/edit/editimage4.png',
                  image3: 'assets/edit/editimage5.png',
                ),
                kHeight10,
                const QuestionWidget2(
                    text1: 'メニュー写真', text2: '1枚〜3枚ずつ追加してください'),
                kHeight5,
                ThreeImageWidgets(
                  width: width,
                  image1: 'assets/edit/editimage6.png',
                  image2: 'assets/edit/editimage7.png',
                  image3: 'assets/edit/editimage8.png',
                ),
                kHeight10,
                const QuestionWidget1(text: '営業時間'),
                kHeight10,
                TimeWidget(
                  width: width,
                  eTime: '10 : 00',
                  sTime: '20 : 00',
                ),
                kHeight10,
                const QuestionWidget1(text: 'ランチ時間'),
                kHeight10,
                TimeWidget(
                  width: width,
                  eTime: '11 : 00',
                  sTime: '15 : 00',
                ),
                kHeight10,
                const QuestionWidget1(text: '定休日'),
                kHeight10,
                const Row(
                  children: [
                    TickOutLineWidget(text: '月'),
                    kWidth20,
                    TickOutLineWidget(text: '火'),
                    kWidth20,
                    TickOutLineWidget(text: '水'),
                    kWidth20,
                    TickOutLineWidget(text: '木'),
                  ],
                ),
                kHeight10,
                const Row(
                  children: [
                    TickOutLineWidget(text: '金'),
                    kWidth20,
                    TickWidget(text: '土'),
                    kWidth20,
                    TickWidget(text: '日'),
                    kWidth20,
                    TickWidget(text: '祝'),
                  ],
                ),
                kHeight10,
                const QuestionWidget1(text: '料理カテゴリー'),
                kHeight10,
                DropDownWidget(width: width),
                kHeight10,
                const QuestionWidget1(text: '予算'),
                kHeight10,
                AmountWidget(width: width),
                kHeight10,
                const QuestionWidget1(text: 'キャッチコピー'),
                const EditTextContainer(text: '美味しい！リーズナブルなオムライスランチ！'),
                kHeight10,
                const QuestionWidget1(text: '座席数'),
                const EditTextContainer(text: '40席'),
                kHeight10,
                const QuestionWidget1(text: '喫煙席'),
                kHeight10,
                const Row(
                  children: [
                    TickWidget(text: '有'),
                    kWidth20,
                    TickOutLineWidget(text: '無')
                  ],
                ),
                kHeight10,
                const QuestionWidget1(text: '駐車場'),
                kHeight10,
                const Row(
                  children: [
                    TickWidget(text: '有'),
                    kWidth20,
                    TickOutLineWidget(text: '無')
                  ],
                ),
                kHeight10,
                const QuestionWidget1(text: '来店プレゼント'),
                kHeight10,
                const Row(
                  children: [
                    TickWidget(text: '有（最大３枚まで）'),
                    kWidth20,
                    TickOutLineWidget(text: '無')
                  ],
                ),
                kHeight20,
                ThreeImageWidgets(
                    width: width,
                    image1: 'assets/edit/editimage9.png',
                    image2: 'assets/edit/editimage10.png',
                    image3: 'assets/edit/editimage11.png'),
                kHeight20,
                const QuestionWidget1(text: '来店プレゼント名'),
                const EditTextContainer(text: 'いちごクリームアイスクリーム, ジュース'),
                kHeight20,
                kHeight20,
                const ButtonWidget(),
                kHeight30,
              ],
            ),
          )
        ],
      ),
    );
  }
}
