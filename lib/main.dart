import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:motasa_hc_app/core/init/main_binding.dart';
import 'package:motasa_hc_app/core/middleware/auth_middleware.dart';
import 'package:motasa_hc_app/modules/home/detail_do_view.dart';
import 'package:motasa_hc_app/modules/home/home_view.dart';
import 'package:motasa_hc_app/modules/login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Motasa HC App',
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        initialBinding: MainBinding(),
        initialRoute: '/home',
        getPages: [
          GetPage(
              name: '/login', page: () => LoginView(), binding: MainBinding()),
          GetPage(
              name: '/detail_do',
              page: () => DetailDoView(),
              binding: MainBinding(),
              middlewares: [AuthMiddleware()]),
          GetPage(
              name: '/home',
              page: () => HomeView(),
              binding: MainBinding(),
              middlewares: [AuthMiddleware()]),
        ]);
  }
}
