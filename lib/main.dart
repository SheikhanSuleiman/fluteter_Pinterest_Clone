

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'package:pinterest_code/home_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context)=> const MyApp(),
    )
  );
  
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      useInheritedMediaQuery: true,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
      
    );
  }
}