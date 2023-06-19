import 'package:flutter/material.dart';
import 'package:yparking/constant/CustomColor.dart';
import 'package:yparking/screen/element/BaseWidget.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return BaseWidget(
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('asset/img/background.png'), // 배경 이미지
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(25.0, deviceHeight * 0.75, 25, deviceHeight * 0.15),
          child: SizedBox(
            child: TextButton(
              onPressed: clickedAddUserBtn,
              style: ElevatedButton.styleFrom(
                backgroundColor: BUTTON_COLOR,
                foregroundColor: Colors.white,
                side: const BorderSide(
                  color: Colors.white
                )
              ),
              child: const Text('사용자 등록'),
            ),
          ),
        ),
      ),
    );
  }

  clickedAddUserBtn() {
    debugPrint('확인 버튼 클릭시');
    Navigator.pushReplacementNamed(
        context, '/main'
    );
  }
}



