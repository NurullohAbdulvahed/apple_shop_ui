import 'package:apple_shop_ui/apple_ui.dart';
import 'package:apple_shop_ui/your_log_page.dart';
import 'package:flutter/material.dart';

import 'home_work_apple.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWorkApple(),
      routes: {
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
