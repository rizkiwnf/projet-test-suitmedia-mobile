import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key, this.image, this.size}) : super(key: key);
  final String? image;
  final TextEditingController? size;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                AnimatedButton(pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    title: "Warning",
                    desc: "it's Polindrome",
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
