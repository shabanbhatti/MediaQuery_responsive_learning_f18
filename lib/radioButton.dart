import 'package:flutter/material.dart';
import 'package:radio_chechbox_f18assignment/myTextStyle.dart';

class RadioButtons extends StatefulWidget {
  RadioButtons({super.key, required this.focusNode});
  var focusNode;

  @override
  State<RadioButtons> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  var maleValue = 'Male value';
  var femaleValue = 'Female value';
  var groupValue = '';
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SizedBox(
      height: mediaQuery.height * 0.03,
      width: mediaQuery.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: FittedBox(
              child: Text(
                'Gender :',
                style: myTextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Flexible(
            child: Radio(
              
              focusNode: widget.focusNode,
              value: maleValue,
              groupValue: groupValue,
              overlayColor: const WidgetStatePropertyAll(Colors.blue),
              fillColor: groupValue == '' || groupValue == femaleValue
                  ? const WidgetStatePropertyAll(Colors.white)
                  : const WidgetStatePropertyAll(Colors.green),
              onChanged: (value) {
                setState(() {
                  groupValue = maleValue;
                });
              },
            ),
          ),
          Flexible(
            child: FittedBox(
              child: Text(
                "Male",
                style: myTextStyle(
                    color: Colors.white, fontSize: 17, fontWeight: null),
              ),
            ),
          ),
          Flexible(
            child: Radio(
              value: femaleValue,
              groupValue: groupValue,
              overlayColor: const WidgetStatePropertyAll(Colors.blue),
              fillColor: groupValue == '' || groupValue == maleValue
                  ? const WidgetStatePropertyAll(Colors.white)
                  : const WidgetStatePropertyAll(Colors.green),
              onChanged: (value) {
                setState(() {
                  groupValue = femaleValue;
                });
              },
            ),
          ),
          Flexible(
            child: FittedBox(
              child: Text(
                "Female",
                style: myTextStyle(
                    color: Colors.white, fontSize: 17, fontWeight: null),
              ),
            ),
          )
        ],
      ),
    );
  }
}
