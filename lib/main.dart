



import 'package:flutter/material.dart';
import 'package:radio_chechbox_f18assignment/background_img.dart';
import 'package:radio_chechbox_f18assignment/opacityContainer.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          toolbarHeight: 0.5,
          actions: const [],
        ),
        body: Center(
          child: Stack(
            children: [
              backgroundImage(
                  height: mediaQuery.height, width: mediaQuery.width),
              const OpacityContainer()
            ],
          ),
        ),
      ),
    );
  }
}
