import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strong_server_front/services/splash_service.dart';
import 'package:strong_server_front/common/routes/get_pages.dart';
import 'package:strong_server_front/views/splash_view.dart';

class Root extends StatelessWidget {
  Root({Key? key}) : super(key: key);
  GetPages getPage = GetPages();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.put(SplashService());
      }),
      getPages: GetPages.pageList,
      builder: (context, child) {
        return FutureBuilder<void>(
            future: SplashService().init(),
            builder: (context, snapShot) {
              if (snapShot.connectionState == ConnectionState.done) {
                // printScreenInformation();
                return child ?? const SizedBox.shrink();
              }
              return SplashView();
            });
      },
    );
  }
}
