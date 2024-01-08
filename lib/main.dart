import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:social_media_flutter_app/routes/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: RouteHelper.getSignupPageRoute(),
      getPages: RouteHelper.routes,
    );
  }
}

