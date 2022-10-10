import 'package:flutter/material.dart';
import 'package:flutter_application_greengrocery/views/greengrocery_detail_page_view.dart';
import 'package:flutter_application_greengrocery/views/greengrocery_home_page_view.dart';
import 'package:flutter_application_greengrocery/views/greengrocery_info_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green,),
      home: const InfoPage(),
    );
  }
}

