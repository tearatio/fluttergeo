import 'package:flutter/material.dart';
import 'package:fluttergeo/screens/homescreen.dart';
import 'package:fluttergeo/services/locationservice.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    LocationService().getUserPermissionAndPosition();
  }



  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'This is Material App title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
