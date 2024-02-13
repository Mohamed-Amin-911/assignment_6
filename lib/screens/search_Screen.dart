import 'package:assignment_6/size_config.dart';
import 'package:assignment_6/text_style.dart';
import 'package:assignment_6/widgets/chip_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50 * Sizeconfig.verticalBlock),
            SizedBox(
              height: 50 * Sizeconfig.verticalBlock,
              width: 300 * Sizeconfig.horizontalBlock,
              child: TextField(
                decoration: InputDecoration(
                    border:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
                    prefixIconColor: Colors.grey,
                    prefixIcon: const Icon(Icons.search, size: 30),
                    hintText: "Search",
                    hintStyle: appStyle(
                        fw: FontWeight.w400, size: 20, color: Colors.grey)),
              ),
            ),
            SizedBox(height: 20 * Sizeconfig.verticalBlock),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChipWidget(txt: "burger"),
                    ChipWidget(txt: "vegetarian"),
                    ChipWidget(txt: "healthy"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChipWidget(txt: "wrap"),
                    ChipWidget(txt: "fast food"),
                    ChipWidget(txt: "salad"),
                    ChipWidget(txt: "snack")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChipWidget(txt: "sandwich"),
                    ChipWidget(txt: "sushi"),
                    ChipWidget(txt: "desserts"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChipWidget(txt: "thai"),
                    ChipWidget(txt: "lunch"),
                    ChipWidget(txt: "pizza"),
                    ChipWidget(txt: "kebab"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChipWidget(txt: "breakfast"),
                    ChipWidget(txt: "wings"),
                    ChipWidget(txt: "desserts"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
