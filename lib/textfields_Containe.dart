import 'package:flutter/material.dart';
import 'package:radio_chechbox_f18assignment/address.dart';
import 'package:radio_chechbox_f18assignment/name_.dart';
import 'package:radio_chechbox_f18assignment/phoneNum.dart';
import 'package:radio_chechbox_f18assignment/radioButton.dart';

class TextFieldContainer extends StatefulWidget {
  const TextFieldContainer({super.key});

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.white, width: 1),
    );
  }

  @override
  State<TextFieldContainer> createState() => _TextFieldContainerState();
}

class _TextFieldContainerState extends State<TextFieldContainer> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var focusNodeNumber = FocusNode();
    var focusNodeAddress = FocusNode();
    var focusNodeMale = FocusNode();
    return Container(
        height: mediaQuery.height * 0.35,
        width: mediaQuery.width * 0.85,
        decoration: widget.boxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(child: EnterYourName(
              onSubmittedFocusNode: (value) {
                FocusScope.of(context).requestFocus(focusNodeNumber);
              },
            )),
            Flexible(
                child: EnterYourNumber(
              focusNode: focusNodeNumber,
              onSubmittedFocusNode: (value) {
                FocusScope.of(context).requestFocus(focusNodeAddress);
              },
            )),
            Flexible(
                child: EnterYourAddress(
                    focusNode: focusNodeAddress,
                    onSubmittedFocusNode: (value) {
                      FocusScope.of(context).requestFocus(focusNodeMale);
                    })),
            Flexible(
                child: RadioButtons(
              focusNode: focusNodeMale,
            ))
          ],
        ));
  }
}
