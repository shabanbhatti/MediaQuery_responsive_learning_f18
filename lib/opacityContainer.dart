import 'package:flutter/material.dart';
import 'package:radio_chechbox_f18assignment/bottomContainer.dart';
import 'package:radio_chechbox_f18assignment/textfields_Containe.dart';

class OpacityContainer extends StatelessWidget {
  const OpacityContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        color: Colors.black.withOpacity(0.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: mediaQuery.height * 0.2,
              width: mediaQuery.width * 0.45,
              child: Image.asset(
                'assets/images/restaurant.png',
                fit: BoxFit.fill,
                color: Colors.white,
              ),
            ),
            const TextFieldContainer(),
            SizedBox(
              height: mediaQuery.height * 0.005,
            ),
            const BottomContainer(),
          ],
        ),
      ),
    );
  }
}
