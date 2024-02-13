import 'package:assignment_6/size_config.dart';
import 'package:assignment_6/text_style.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.txt1,
    required this.txt2,
    required this.image,
  });
  final String txt1;
  final String txt2;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(image)),
          SizedBox(height: 10 * Sizeconfig.verticalBlock),
          Text(
            "    $txt1",
            style: appStyle(fw: FontWeight.w500, size: 16, color: Colors.black),
          ),
          Text(
            "    $txt2",
            style: appStyle(
                fw: FontWeight.w400, size: 12, color: const Color(0xff494C61)),
          ),
        ],
      ),
    );
  }
}
