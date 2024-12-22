import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_chechbox_f18assignment/myTextStyle.dart';

class EnterYourName extends StatefulWidget {
   EnterYourName({super.key, required this.onSubmittedFocusNode});
  Function(String)? onSubmittedFocusNode;

  @override
  State<EnterYourName> createState() => _EnterYourNameState();
}

class _EnterYourNameState extends State<EnterYourName> {
  var controller = TextEditingController();
  var focusNode = FocusNode();

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
              validator: (value) {
                if (controller.text.isEmpty) {
                  return 'Input should not be empty';
                } else if (!RegExp('[A-Z]').hasMatch(controller.text)) {
                  return 'Upper case should contain in Name';
                } else if (!RegExp('[a-z]').hasMatch(controller.text)) {
                  return 'Lower case should contain in Name';
                } else if (value!.length < 6) {
                  return 'Name should be greater than 7 words';
                } else if (!RegExp('[\\s]').hasMatch(value)) {
                  return 'Name should contains spaces';
                } else if (value.length > 33) {
                  return 'Name should be greater than 31 words';
                }

                return null;
              },
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]'))
              ],
              onChanged: (value) {
                setState(() {});
              },
              keyboardType: TextInputType.name,
              cursorColor: Colors.white,
              style: myTextStyle(
                  color: Colors.white, fontSize: 15, fontWeight: null),
              controller: controller,
              focusNode: focusNode,
              onFieldSubmitted:widget.onSubmittedFocusNode,
              decoration: InputDecoration(
                  label: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Enter your name',
                        style: myTextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: null),
                      )),
                  prefixIcon: const Icon(
                    Icons.person,
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
