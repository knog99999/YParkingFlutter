import 'package:flutter/material.dart';
import 'package:yparking/screen/MainScreen.dart';
import 'package:yparking/screen/PermissionScreen.dart';
import 'package:yparking/screen/LoadingScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/' : (BuildContext context) =>  const PermissionScreen(),
      '/loading' : (BuildContext context) => const LoadingScreen(),
      '/main' : (BuildContext context) => const MainScreen(),
    },
  ));
}

