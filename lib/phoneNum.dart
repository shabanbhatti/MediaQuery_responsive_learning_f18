import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_chechbox_f18assignment/myTextStyle.dart';

class EnterYourNumber extends StatefulWidget {
   EnterYourNumber({super.key, required this.focusNode, required this.onSubmittedFocusNode});
  var focusNode;
Function(String)? onSubmittedFocusNode;
  @override
  State<EnterYourNumber> createState() => _EnterYourNumberState();
}

class _EnterYourNumberState extends State<EnterYourNumber> {
  var controller = TextEditingController();
  

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Form(
        autovalidateMode: AutovalidateMode.always,
        child: SizedBox(
            height: mediaQuery.height * 0.095,
            width: mediaQuery.width * 0.8,
            child: TextFormField(
               onFieldSubmitted:widget.onSubmittedFocusNode,
              validator: (value) {
                if (controller.text.isEmpty) {
                  return 'Number should not be empty';
                } else if (value!.length <= 10 || value.length >= 12) {
                  return 'Number context is invalid';
                }
                return null;
              },
              cursorColor: Colors.white,
              style: myTextStyle(
                  color: Colors.white, fontSize: 15, fontWeight: null),
              controller: controller,
              focusNode: widget.focusNode,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[\\d]'))
              ],
              onChanged: (value) {
                setState(() {});
              },
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  label: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Enter your Phone NO',
                        style: myTextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: null),
                      )),
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  suffixIcon: controller.text.isNotEmpty
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              controller.clear();
                            });
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ))
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: controller.text.isEmpty
                          ? const BorderSide(
                              color: Colors.white,
                            )
                          : const BorderSide(color: Colors.green, width: 2)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2))),
            )));
  }
}
