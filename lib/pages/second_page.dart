import 'package:flutter/material.dart';
import 'package:suitmedia/pages/third_page.dart';
import 'package:suitmedia/widgets/button_submit.dart';
import 'package:get/get.dart';
import 'package:suitmedia/widgets/textName.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key,
    required this.name,
    this.username
  });

  final String name;
  final String? username;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.indigo,
        ),
        title: TextName(
            hintText: 'Second Screen',
            sizeText: 20,
            weightText: FontWeight.bold,
            marginText: EdgeInsets.zero
        ),
        foregroundColor: Colors.black,
        shape: Border(
          bottom: BorderSide(
            width: 0.1,
            color: Color(0xFFE2E3E4),
          )
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextName(
                marginText: EdgeInsets.only(top: 15),
                weightText: FontWeight.w400,
                hintText: "Welcome",
                sizeText: 10,
              ),
              TextName(
                marginText: EdgeInsets.only(top: 5),
                weightText: FontWeight.bold,
                hintText: "${widget.username}",
                sizeText: 13,
              ),
              Align(
                alignment: Alignment.center,
                heightFactor: 10,
                child: TextName(
                  marginText: EdgeInsets.zero,
                  weightText: FontWeight.bold,
                  hintText: "${widget.name}",
                  sizeText: 30,
                ),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ButtonSubmit(
            buttonName: 'Choose a User',
            link: () {
              Get.to(ThirdPage(username: widget.username,));
            },
          )),
    );
  }
}
