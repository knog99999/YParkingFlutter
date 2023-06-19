import 'package:flutter/material.dart';
import 'package:yparking/constant/CustomColor.dart';


// 기본 위젯
class BaseWidget extends StatelessWidget {
  final Widget body;

  const BaseWidget({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: body,
      ),
    );
  }
}
