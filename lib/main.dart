import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

import '../routes.dart';
import '../bindings.dart';
import '../pages/home_page.dart';

void main() async {
  SampleBindings().dependencies();
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows) {
    await windowManager.ensureInitialized();
    WindowManager.instance.setMinimumSize(const Size(1100, 768));
    WindowManager.instance.setMaximumSize(const Size(1100, 768));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: MyHomePage.namedRoute,
        getPages: SampleRoutes.samplePages);
  }
}
