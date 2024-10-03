import 'package:flutter/material.dart';
import 'package:flutter_get_x/language.dart';
import 'package:flutter_get_x/main_file/ex_6.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Language(), // Correct class reference
      locale: Locale('en', 'US'), // Default locale
      fallbackLocale: Locale('en', 'US'), // Fallback to 'en' if not found
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Ex6(),
    );

    // return GetMaterialApp(
    //   title: 'Flutter Demo',
    //   // locale: const Locale(
    //   //   'en',
    //   //   'US',
    //   // ),
    //   translations: Languages(),
    //   fallbackLocale: Locale('en', 'US'),
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

    //     // locale: const Locale('en', 'US'),

    //     useMaterial3: true,
    //   ),
    //   home: const GetxLocalization(),
    //   // home: const HomePage(),
    //   // home: const DilogAlert(),
    //   // home: const GetHeightGetWidth(),
    //   // home: const NavigatorScreen(
    //   //   title: 'vasu',
    //   // ),
    //   // getPages: [
    //   //   GetPage(
    //   //     name: '/',
    //   //     page: () => const NavigatorScreen(
    //   //       title: 'vasu',
    //   //     ),
    //   //   ),
    //   //   GetPage(name: '/Dilogalert', page: () => const DilogAlert()),

    //   //   // GetPage(name: '/', page: () => const DilogAlert()),
    //   // ],
    // );
  }
}
