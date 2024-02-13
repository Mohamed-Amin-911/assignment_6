import 'package:assignment_6/size_config.dart';
import 'package:assignment_6/text_style.dart';
import 'package:flutter/material.dart';

class FastestDelivery extends StatelessWidget {
  const FastestDelivery({
    super.key,
    required this.image,
    required this.price,
  });
  final String image;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: 271 * Sizeconfig.horizontalBlock,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      topLeft: Radius.circular(8)),
                  child: Image(
                      width: 271 * Sizeconfig.horizontalBlock,
                      height: 122 * Sizeconfig.verticalBlock,
                      fit: BoxFit.fitWidth,
                      image: AssetImage(image))),
              Positioned(
                bottom: 10,
                right: 0,
                child: Container(
                  width: 115 * Sizeconfig.horizontalBlock,
                  height: 26 * Sizeconfig.verticalBlock,
                  decoration: const BoxDecoration(
                    color: Color(0xffFE8800),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "   €3.00 off delivery  ",
                        style: appStyle(
                            fw: FontWeight.w400, size: 10, color: Colors.white),
                      ),
                      const Image(
                          image: AssetImage("assets/ticket-discount.png"))
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10 * Sizeconfig.verticalBlock),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Crazy tacko",
                  style: appStyle(
                      fw: FontWeight.w700, size: 18, color: Colors.black),
                ),
                Text(
                  "Delicouse tackos, appetizing snacks, fr...",
                  style: appStyle(
                      fw: FontWeight.w400,
                      size: 12,
                      color: const Color(0xff494C61)),
                ),
                SizedBox(height: 7 * Sizeconfig.verticalBlock),
                Row(
                  children: [
                    Row(
                      children: [
                        const Image(image: AssetImage("assets/truck.png")),
                        Text(
                          " €$price,00",
                          style: appStyle(
                              fw: FontWeight.w400,
                              size: 12,
                              color: const Color(0xff494C61)),
                        ),
                      ],
                    ),
                    SizedBox(width: 7 * Sizeconfig.horizontalBlock),
                    Row(
                      children: [
                        Row(
                          children: [
                            const Image(image: AssetImage("assets/timer.png")),
                            Text(
                              " 40-50min",
                              style: appStyle(
                                  fw: FontWeight.w400,
                                  size: 12,
                                  color: const Color(0xff494C61)),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 7 * Sizeconfig.horizontalBlock),
                    Row(
                      children: [
                        Row(
                          children: [
                            const Image(image: AssetImage("assets/star.png")),
                            Text(
                              " 9,5",
                              style: appStyle(
                                  fw: FontWeight.w400,
                                  size: 12,
                                  color: const Color(0xff494C61)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
