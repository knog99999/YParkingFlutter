import 'package:flutter/material.dart';
import 'package:yparking/screen/element/BaseWidget.dart';
import 'package:yparking/screen/element/LinePadding.dart';

import '../constant/CustomColor.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({Key? key}) : super(key: key);

  @override
  State<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('와이파킹 사용을 위한 접근 권한 안내',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center),
                  LinePadding(value: 25),
                  Text(
                    '필수 접근 권한',
                    style: TextStyle(fontSize: 20),
                  ),
                  LinePadding(value: 10),
                  _imgCard(
                    title: '블루투스',
                    content: '실내에서의 차량 위치 측정',
                    image: 'ic_ble.png',
                  ),
                  _imgCard(
                    title: '위치',
                    content: '더 구체적인 위치 측정',
                    image: 'ic_location.png',
                  ),

                  LinePadding(value: 15),
                  Text(
                    '선택적 접근 권한',
                    style: TextStyle(fontSize: 20),
                  ),
                  LinePadding(value: 10),
                  _imgCard(
                    title: '백그라운드 위치',
                    content: '백그라운드에서 정확한 위치 측정',
                    image: 'ic_background_location.png',
                  ),
                  _imgCard(
                    title: '배터리 사용량 최적화 중지',
                    content: '백그라운드에서 항상 동작합니다.',
                    image: 'ic_battery2.png',
                  ),
                  _imgCard(
                    title: '다른 앱 위에 표시하기',
                    content: '다른 앱 사용 중에 표시',
                    image: 'ic_phone.png',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            child: ElevatedButton(
              onPressed: () {
                clickedOKBtn(); // 파이어베이스 인증 문자요청
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: STATUS_BAR_COLOR,

              ),
              child: const Text('확인'),
            ),
          )
        ],
      ),
    );
  }

  // 확인 버튼 클릭시
  clickedOKBtn() {
    debugPrint('확인 버튼 클릭시');
    Navigator.pushReplacementNamed(
        context, '/loading'
    );
  }
}

class _imgCard extends StatelessWidget {
  final String title;
  final String content;
  final String image;

  const _imgCard(
      {Key? key,
      required this.title,
      required this.content,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Image.asset('asset/img/$image'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 18)),
                    Text(content,
                        style: const TextStyle(fontSize: 15, color: Colors.grey)),
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
