import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    this.image,
    required this.heightAvatar,
    required this.widthAvatar,
    required this.pictAvatar,
    this.size
  }) : super(key: key);
  final String? image;
  final double heightAvatar;
  final double widthAvatar;
  final String pictAvatar;
  final TextEditingController? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightAvatar,
      width: widthAvatar,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          image: NetworkImage(pictAvatar),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(100)
      ),
    );
  }
}
