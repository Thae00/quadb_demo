import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:qadb/presentation/modules/splash/page.dart';
import '../../core/core.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Qadb Tech",
        builder: EasyLoading.init(),
        home: const SplashPage(isAuth: false));
  }
}