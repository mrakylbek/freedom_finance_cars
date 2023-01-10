import 'package:ff_cars/widgets/main_screen/car_info.dart';
import 'package:ff_cars/widgets/main_screen/proverka_info.dart';
import 'package:ff_cars/widgets/main_screen/s_proverkoi.dart';
import 'package:flutter/material.dart';
import 'package:ff_cars/Theme/app_colors.dart';
import 'package:ff_cars/widgets/auth/auth_widget.dart';
import 'package:ff_cars/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: AppColors.mainDarkBlue),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.yellow,
        ),
      ),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
        '/car_info': (context) => CarInfo(),
        '/proverka': (context) => S_proverkoi(),
        '/proverka_info': (context) => ProverkaInfo(),
      },
      // initialRoute: '/auth',
      initialRoute: '/auth',
    );
  }
}
