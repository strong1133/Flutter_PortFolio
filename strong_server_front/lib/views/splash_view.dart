import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strong_server_front/services/splash_service.dart';

class SplashView extends GetView<SplashService> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: Colors.blue),
    );
  }
}
