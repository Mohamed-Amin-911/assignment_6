import 'package:assignment_6/text_style.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.txt,
  });
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xffFE8800),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        txt,
        style: appStyle(fw: FontWeight.w400, size: 15, color: Colors.white),
      ),
    );
  }
}
