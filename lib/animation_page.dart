import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_lottie/flutter_lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 1080, height: 2094)..init(context);
    print(ScreenUtil.screenHeight);
    print(ScreenUtil.screenWidth);
    return Container(
      child: Column(
        children: <Widget>[
          Text('from json file'),
          Container(
            height: ScreenUtil().setHeight(333),
            width: ScreenUtil().setWidth(1080),
            child: Center(
              child: LottieView.fromFile(
                filePath: "assets/lottie1.json",
                autoPlay: true,
                loop: true,
                reverse: false,
                onViewCreated: (e) {
                  print(e);
                },
                //onViewCreated: onViewCreatedFile,
              ),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(750),
            width: ScreenUtil().setWidth(750),
            child: Center(
              child: LottieView.fromFile(
                filePath: "assets/lottie2.json",
                autoPlay: true,
                loop: true,
                reverse: false,
                onViewCreated: (e) {
                  print(e);
                },
                //onViewCreated: onViewCreatedFile,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
