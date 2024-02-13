import 'package:assignment_6/size_config.dart';
import 'package:assignment_6/text_style.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  int switcherIndex1 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 50 * Sizeconfig.verticalBlock),
            Center(
              child: SizedBox(
                height: 50 * Sizeconfig.verticalBlock,
                width: 300 * Sizeconfig.horizontalBlock,
                child: TextField(
                  decoration: InputDecoration(
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      prefixIconColor: Colors.grey,
                      prefixIcon: const Icon(Icons.search, size: 30),
                      hintText: "Search",
                      hintStyle: appStyle(
                          fw: FontWeight.w400, size: 20, color: Colors.grey)),
                ),
              ),
            ),
            SizedBox(height: 20 * Sizeconfig.verticalBlock),
            CustomSlidingSegmentedControl<int>(
              innerPadding: const EdgeInsets.all(5),
              fixedWidth: 150 * Sizeconfig.horizontalBlock,
              initialValue: 1,
              children: {
                1: Text(
                  'Food Items',
                  style: appStyle(
                      fw: FontWeight.w500,
                      size: 15,
                      color: switcherIndex1 == 1 ? Colors.white : Colors.grey),
                ),
                2: Text(
                  'Restaurants',
                  style: appStyle(
                      fw: FontWeight.w500,
                      size: 15,
                      color: switcherIndex1 == 2 ? Colors.white : Colors.grey),
                ),
              },
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(188, 118, 118, 118)),
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              thumbDecoration: BoxDecoration(
                color: const Color(0xffF83B01),
                borderRadius: BorderRadius.circular(30),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInToLinear,
              onValueChanged: (int v) {
                setState(() {
                  switcherIndex1 = v;
                });
              },
            ),
            SizedBox(height: 20 * Sizeconfig.verticalBlock),
            SizedBox(
              height: 620,
              // margin: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            child: Image(
                                width: 342 * Sizeconfig.horizontalBlock,
                                height: 180 * Sizeconfig.verticalBlock,
                                fit: BoxFit.fitWidth,
                                image: const AssetImage(
                                    "assets/Image block.png"))),
                        Positioned(
                            right: 20,
                            top: 20,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF83B01)),
                              child: const Icon(
                                Icons.favorite_rounded,
                                color: Colors.white,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 10 * Sizeconfig.verticalBlock),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shrimp pizza",
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
                    Stack(children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              topLeft: Radius.circular(8)),
                          child: Image(
                              width: 342 * Sizeconfig.horizontalBlock,
                              height: 180 * Sizeconfig.verticalBlock,
                              fit: BoxFit.fitWidth,
                              image:
                                  const AssetImage("assets/Image block2.png"))),
                      Positioned(
                          right: 20,
                          top: 20,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffF83B01)),
                            child: const Icon(
                              Icons.favorite_rounded,
                              color: Colors.white,
                            ),
                          ))
                    ]),
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
                    Stack(children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              topLeft: Radius.circular(8)),
                          child: Image(
                              width: 342 * Sizeconfig.horizontalBlock,
                              height: 180 * Sizeconfig.verticalBlock,
                              fit: BoxFit.fitWidth,
                              image:
                                  const AssetImage("assets/Image block2.png"))),
                      Positioned(
                          right: 20,
                          top: 20,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffF83B01)),
                            child: const Icon(
                              Icons.favorite_rounded,
                              color: Colors.white,
                            ),
                          ))
                    ]),
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
