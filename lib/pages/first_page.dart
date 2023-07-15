import 'package:flutter/material.dart';
import 'package:suitmedia/pages/second_page.dart';
import 'package:suitmedia/widgets/avatar.dart';
import 'package:suitmedia/widgets/button_submit.dart';
import 'package:suitmedia/widgets/form_input.dart';
import 'package:get/get.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final nameController = TextEditingController();
  final polindromeController = TextEditingController();

  bool palindromeCheck(String inputString) {
    return inputString == inputString.split("").reversed.join();
  }

  String hasilPalindrom(String text) {
    if (palindromeCheck(text) == true) {
      return 'Palindrome';
    } else {
      return 'Bukan Palindrome';
    }
  }

  @override
  Widget build(BuildContext context) {
    void dialogHasil() {
      Get.defaultDialog(
        title: 'Hasil Pengecekan',
        content: Container(
            padding: EdgeInsets.all(30),
            height: 100,
            width: double.maxFinite,
            child: Text(hasilPalindrom(polindromeController.text))),
        onCancel: () {},
      );
    }

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background1.png"),
                fit: BoxFit.cover)),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Avatar(
                pictAvatar: ('assets/images/ic_photo.png'),
                heightAvatar: 150,
                widthAvatar: 150,
              ),
              FormInput(
                hintText: "Name",
                controller: nameController,
              ),
              FormInput(
                hintText: "Polindrome",
                controller: polindromeController,
              ),
              SizedBox(
                height: 30,
              ),
              ButtonSubmit(
                link: () {
                  dialogHasil();
                },
                buttonName: 'Check',
              ),
              ButtonSubmit(
                link: () {
                  Get.to(
                      SecondPage(name: "Selected User name",
                        username: nameController.text,
                  ));
                },
                buttonName: 'Next',
              )
            ],
          ),
        ));
  }
}
