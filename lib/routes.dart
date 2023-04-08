
import 'package:get/get.dart';
import '../pages/home_page.dart';
import '../bindings.dart';

class SampleRoutes {
  static List<GetPage<dynamic>> samplePages = [
    GetPage(
        name: MyHomePage.namedRoute,
        page: ((() => const MyHomePage())),
        binding: SampleBindings())
  ];
}