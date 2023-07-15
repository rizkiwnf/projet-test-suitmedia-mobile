import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  const FormInput(
      {Key? key,
        this.hintText,
        this.controller})
      : super(key: key);
  final String? hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontFamily: 'OpenSans'),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            )),
      ),
    );
  }
}