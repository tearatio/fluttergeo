import 'package:flutter/material.dart';
import 'package:fluttergeo/services/locationservice.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Http test app", style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: Container(
          child: Center(child: Text(LocationService().longitude.toString(),),),
        ),
      ),
    );
  }
}
