import 'package:flutter/material.dart';
import 'package:radio_chechbox_f18assignment/checkBox.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({super.key});

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  BoxDecoration boxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.white, width: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.37,
      width: mediaQuery.width * 0.85,
      decoration: boxDecoration(),
      child: const BottomCheckBoxes()
    );
  }
}
