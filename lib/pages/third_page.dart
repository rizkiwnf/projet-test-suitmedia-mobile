import 'package:flutter/material.dart';
import 'package:suitmedia/pages/second_page.dart';
import 'package:suitmedia/widgets/avatar.dart';
import 'package:get/get.dart';
import 'package:suitmedia/widgets/textName.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'dart:convert';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key,
    this.username
  });

  final String? username;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  var dataUser = <dynamic>[];
  void _loadData() {
    int page = 1;
    int per_page = 10;
    final url = 'https://reqres.in/api/users?page=$page&per_page=$per_page';
    DefaultCacheManager().getSingleFile(url).then((file) {
      file.readAsString().then((str) {
        final data = jsonDecode(str);
        setState(() {
          dataUser = data['data'];
        });
      });
    });
  }

  @override
  void initState() {
    _loadData();
  }

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
              hintText: 'Third Screen',
              sizeText: 20,
              weightText: FontWeight.bold,
              marginText: EdgeInsets.zero),
          foregroundColor: Colors.black,
          shape: Border(
              bottom: BorderSide(
            color: Color(0xFFE2E3E4),
          )),
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: dataUser
                .map((e) => GestureDetector(
                    onTap: () {
                      Get.to(SecondPage(
                          name: "${e['first_name']} ${e['last_name']}",
                        username: widget.username,
                      )
                      );
                    },
                    child: ListTile(
                        leading: Avatar(
                          pictAvatar: ('${e['avatar']}'),
                          heightAvatar: 50,
                          widthAvatar: 50,
                        ),
                        title: TextName(
                          hintText: "${e['first_name']} ${e['last_name']}",
                          sizeText: 15,
                          weightText: FontWeight.bold,
                          marginText: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        subtitle: TextName(
                          hintText: '${e['email']}',
                          sizeText: 10,
                          weightText: FontWeight.normal,
                          marginText: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        shape: Border(
                            bottom: BorderSide(
                          width: 1.0,
                          color: Color(0xFFE2E3E4),
                        )))))
                .toList()));
  }
}
