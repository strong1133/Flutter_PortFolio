import 'package:get/route_manager.dart';
import 'package:strong_server_front/common/routes/route_path.dart';

class GetPages {
  GetPages() {
    gen();
  }
  static const INITIAL = RoutePath.HOME;
  // static List<GetPage<dynamic>> pageList = [GetPage(name: RoutePath.HOME, page: () => Home(), title: "Home"), GetPage(name: RoutePath.MAP, page: () => Map())];
  static List<GetPage<dynamic>> pageList = [];

  static gen() {
    print('GetPages Gen');
    List jsonList = RoutePath.PathJson;
    print(jsonList);

    for (int i = 0; i < jsonList.length; i++) {
      pageList.add(GetPage(name: jsonList[i]['path'], title: jsonList[i]['title'], page: () => jsonList[i]['view']));
    }
  }
}
