import 'package:assignment_6/size_config.dart';
import 'package:assignment_6/text_style.dart';
import 'package:assignment_6/widgets/category.dart';
import 'package:flutter/material.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                const Image(image: AssetImage("assets/Icon (8).png")),
                SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                const Image(image: AssetImage("assets/10.png")),
                SizedBox(width: 5 * Sizeconfig.horizontalBlock),
                const Image(image: AssetImage("assets/Icon9.png")),
              ],
            ),
            SizedBox(height: 20 * Sizeconfig.verticalBlock),
            Text(
              "Restaurants",
              style:
                  appStyle(fw: FontWeight.w600, size: 32, color: Colors.black),
            ),
            SizedBox(height: 30 * Sizeconfig.verticalBlock),
            Row(
              children: [
                Text(
                  "Categories",
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
            SizedBox(height: 30 * Sizeconfig.verticalBlock),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryWidget(
                    image: "assets/Image block.png",
                    txt1: "Brunch",
                    txt2: "94 places",
                  ),
                  CategoryWidget(
                    image: "assets/Image block2.png",
                    txt1: "Sea food",
                    txt2: "43 places",
                  ),
                  CategoryWidget(
                    image: "assets/Image block3.png",
                    txt1: "Dessert",
                    txt2: "38 places",
                  ),
                ],
              ),
            ),
            SizedBox(height: 30 * Sizeconfig.verticalBlock),
            Text(
              "All restaurants",
              style:
                  appStyle(fw: FontWeight.w600, size: 20, color: Colors.black),
            ),
            SizedBox(height: 10 * Sizeconfig.verticalBlock),
            SizedBox(
              height: 355,
              // margin: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8)),
                        child: Image(
                            width: 342 * Sizeconfig.horizontalBlock,
                            // height: 180 * Sizeconfig.verticalBlock,
                            fit: BoxFit.fitWidth,
                            image: const AssetImage("assets/Image6.png"))),
                    SizedBox(height: 10 * Sizeconfig.verticalBlock),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tasty bowl",
                            style: appStyle(
                                fw: FontWeight.w700,
                                size: 18,
                                color: Colors.black),
                          ),
                          Text(
                            "Choose from a variety of bowl options and tas..",
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
                                  const Image(
                                      image: AssetImage("assets/truck.png")),
                                  Text(
                                    " €1,00",
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
                                  const Image(
                                      image: AssetImage("assets/wallet.png")),
                                  Text(
                                    " €€",
                                    style: appStyle(
                                        fw: FontWeight.w400,
                                        size: 12,
                                        color: const Color(0xff494C61)),
                                  ),
                                  Text(
                                    "€€",
                                    style: appStyle(
                                        fw: FontWeight.w400,
                                        size: 12,
                                        color: const Color(0xffB6B7C0)),
                                  ),
                                ],
                              ),
                              SizedBox(width: 7 * Sizeconfig.horizontalBlock),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const Image(
                                          image:
                                              AssetImage("assets/timer.png")),
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
                                      const Image(
                                          image: AssetImage("assets/star.png")),
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
                    ),
                    SizedBox(height: 20 * Sizeconfig.verticalBlock),
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8)),
                        child: Image(
                            width: 342 * Sizeconfig.horizontalBlock,
                            // height: 180 * Sizeconfig.verticalBlock,
                            fit: BoxFit.fitWidth,
                            image: const AssetImage("assets/Image6.png"))),
                    SizedBox(height: 10 * Sizeconfig.verticalBlock),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tasty bowl",
                            style: appStyle(
                                fw: FontWeight.w700,
                                size: 18,
                                color: Colors.black),
                          ),
                          Text(
                            "Choose from a variety of bowl options and tas..",
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
                                  const Image(
                                      image: AssetImage("assets/truck.png")),
                                  Text(
                                    " €1,00",
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
                                  const Image(
                                      image: AssetImage("assets/wallet.png")),
                                  Text(
                                    " €€",
                                    style: appStyle(
                                        fw: FontWeight.w400,
                                        size: 12,
                                        color: const Color(0xff494C61)),
                                  ),
                                  Text(
                                    "€€",
                                    style: appStyle(
                                        fw: FontWeight.w400,
                                        size: 12,
                                        color: const Color(0xffB6B7C0)),
                                  ),
                                ],
                              ),
                              SizedBox(width: 7 * Sizeconfig.horizontalBlock),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const Image(
                                          image:
                                              AssetImage("assets/timer.png")),
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
                                      const Image(
                                          image: AssetImage("assets/star.png")),
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
                    ),
                    SizedBox(height: 20 * Sizeconfig.verticalBlock),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
