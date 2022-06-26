import 'dart:async';

import 'package:async/async.dart';
import 'package:get/get.dart';
import 'package:strong_server_front/common/routes/get_pages.dart';

class SplashService extends GetxService {
  late Timer timer;

  final memo = AsyncMemoizer<void>();
  Future<void> init() {
    return memo.runOnce(_initFunction);
  }

  Future<void> _initFunction() async {
    // Logger.write("_initFunction # 1");
    timer = Timer.periodic(
      const Duration(milliseconds: 1000),
      (timer) => {print('INITIALIZE :: $timer')},
    );
    await Future.delayed(const Duration(seconds: 4));
  }
}
