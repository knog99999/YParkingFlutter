import 'package:flutter/material.dart';
import 'package:yparking/constant/CustomColor.dart';
import 'package:yparking/screen/element/BaseWidget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return BaseWidget(
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Top(deviceHeight: deviceHeight),
            _Middle(deviceHeight: deviceHeight),
            _Bottom(deviceHeight: deviceHeight),

          ],
        ),
      ),
    );
  }
}


// 상단
class _Top extends StatelessWidget {
  final double deviceHeight;
  const _Top({Key? key, required this.deviceHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.15,
      color: STATUS_BAR_COLOR,
    );
  }
}


// 중단 (지도)
class _Middle extends StatelessWidget {
  final double deviceHeight;
  const _Middle({Key? key, required this.deviceHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}


class _Bottom extends StatelessWidget {
  final double deviceHeight;
  const _Bottom({Key? key, required this.deviceHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.1,
      color: STATUS_BAR_COLOR,
    );
  }
}
