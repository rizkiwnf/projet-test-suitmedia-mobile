import 'package:flutter/material.dart';

class ButtonSubmit extends StatelessWidget {
  const ButtonSubmit(
      {Key? key,
        required this.buttonName,
        required this.link,})
      : super(key: key);
  final String buttonName;
  final void Function() link;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                )
            ),
          backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff2B637B)),
            ),
        onPressed: link,
        child: Text(
          buttonName,
        ),
      ),
    );
  }
}