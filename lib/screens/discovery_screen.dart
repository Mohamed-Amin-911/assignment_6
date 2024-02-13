import 'package:assignment_6/size_config.dart';
import 'package:assignment_6/text_style.dart';
import 'package:assignment_6/widgets/fastest_delivery.dart';
import 'package:assignment_6/widgets/order_now.dart';
import 'package:flutter/material.dart';

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50 * Sizeconfig.verticalBlock),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF96234),
                  ),
                  child: const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                Text(
                  "Home,",
                  style: appStyle(
                      fw: FontWeight.w600, size: 14, color: Colors.black),
                ),
                SizedBox(width: 5 * Sizeconfig.horizontalBlock),
                Text(
                  "Jl. Soekarno Hatta 15A",
                  style: appStyle(
                      fw: FontWeight.w400, size: 14, color: Colors.black),
                ),
                SizedBox(width: 5 * Sizeconfig.horizontalBlock),
                const Image(image: AssetImage("assets/Icon (8).png"))
              ],
            ),
            SizedBox(height: 20 * Sizeconfig.verticalBlock),
            const OrderNow(),
            SizedBox(height: 10 * Sizeconfig.verticalBlock),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10 * Sizeconfig.horizontalBlock,
                  height: 10 * Sizeconfig.verticalBlock,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                ),
                SizedBox(width: 8 * Sizeconfig.horizontalBlock),
                Container(
                  width: 10 * Sizeconfig.horizontalBlock,
                  height: 10 * Sizeconfig.verticalBlock,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
                SizedBox(width: 8 * Sizeconfig.horizontalBlock),
                Container(
                  width: 10 * Sizeconfig.horizontalBlock,
                  height: 10 * Sizeconfig.verticalBlock,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
                SizedBox(width: 8 * Sizeconfig.horizontalBlock),
                Container(
                  width: 10 * Sizeconfig.horizontalBlock,
                  height: 10 * Sizeconfig.verticalBlock,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
                SizedBox(width: 5 * Sizeconfig.horizontalBlock),
              ],
            ),
            SizedBox(height: 20 * Sizeconfig.verticalBlock),
            Row(
              children: [
                Text(
                  "Fastest delivery 🔥",
                  style: appStyle(
                      fw: FontWeight.w600, size: 20, color: Colors.black),
                ),
                const Spacer(),
                SizedBox(
                  width: 78 * Sizeconfig.horizontalBlock,
                  height: 26 * Sizeconfig.verticalBlock,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFED8CC)),
                    child: Text(
                      "See all",
                      style: appStyle(
                          fw: FontWeight.w400,
                          size: 12,
                          color: const Color(0xffF83B01)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20 * Sizeconfig.verticalBlock),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FastestDelivery(
                    image: "assets/Image (1).png",
                    price: 3,
                  ),
                  FastestDelivery(
                    image: "assets/Image (2).png",
                    price: 2,
                  )
                ],
              ),
            ),
            SizedBox(height: 20 * Sizeconfig.verticalBlock),
            Row(
              children: [
                Text(
                  "Popular items 👏",
                  style: appStyle(
                      fw: FontWeight.w600, size: 20, color: Colors.black),
                ),
                const Spacer(),
                SizedBox(
                  width: 78 * Sizeconfig.horizontalBlock,
                  height: 26 * Sizeconfig.verticalBlock,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFED8CC)),
                    child: Text(
                      "See all",
                      style: appStyle(
                          fw: FontWeight.w400,
                          size: 12,
                          color: const Color(0xffF83B01)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20 * Sizeconfig.verticalBlock),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image(
                      width: 135 * Sizeconfig.horizontalBlock,
                      height: 122 * Sizeconfig.verticalBlock,
                      fit: BoxFit.fitWidth,
                      image: const AssetImage("assets/Image (3).png")),
                  SizedBox(width: 20 * Sizeconfig.horizontalBlock),
                  Image(
                      width: 135 * Sizeconfig.horizontalBlock,
                      height: 122 * Sizeconfig.verticalBlock,
                      fit: BoxFit.fitWidth,
                      image: const AssetImage("assets/Image (4).png")),
                  Image(
                      width: 135 * Sizeconfig.horizontalBlock,
                      height: 122 * Sizeconfig.verticalBlock,
                      fit: BoxFit.fitHeight,
                      image: const AssetImage("assets/Image (5).png")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
