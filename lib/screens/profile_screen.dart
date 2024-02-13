import 'package:assignment_6/size_config.dart';
import 'package:assignment_6/text_style.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50 * Sizeconfig.verticalBlock),
              const Center(child: Image(image: AssetImage("assets/user.png"))),
              SizedBox(height: 10 * Sizeconfig.verticalBlock),
              Center(
                child: Text(
                  "Katty Berry",
                  style: appStyle(
                      fw: FontWeight.w600, size: 20, color: Colors.black),
                ),
              ),
              Center(
                child: Text(
                  "kattyberry@gmail.com",
                  style: appStyle(
                      fw: FontWeight.w400,
                      size: 14,
                      color: const Color(0xff494C61)),
                ),
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  const Image(image: AssetImage("assets/Icon.png")),
                  SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                  Text(
                    "My Profile",
                    style: appStyle(
                        fw: FontWeight.w400, size: 16, color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  const Image(image: AssetImage("assets/Icon (7).png")),
                  SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                  Text(
                    "My Orders",
                    style: appStyle(
                        fw: FontWeight.w400, size: 16, color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  const Image(image: AssetImage("assets/Icon (1).png")),
                  SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                  Text(
                    "Delivery Address",
                    style: appStyle(
                        fw: FontWeight.w400, size: 16, color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  const Image(image: AssetImage("assets/Icon (2).png")),
                  SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                  Text(
                    "Payments Methods",
                    style: appStyle(
                        fw: FontWeight.w400, size: 16, color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  const Image(image: AssetImage("assets/Icon (3).png")),
                  SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                  Text(
                    "Contact Us",
                    style: appStyle(
                        fw: FontWeight.w400, size: 16, color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  const Image(image: AssetImage("assets/Icon (4).png")),
                  SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                  Text(
                    "Settings",
                    style: appStyle(
                        fw: FontWeight.w400, size: 16, color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  const Image(image: AssetImage("assets/Icon (5).png")),
                  SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                  Text(
                    "Help & FAQ",
                    style: appStyle(
                        fw: FontWeight.w400, size: 16, color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 50 * Sizeconfig.verticalBlock),
              SizedBox(
                width: 140 * Sizeconfig.horizontalBlock,
                height: 44 * Sizeconfig.verticalBlock,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: const BorderSide(color: Color(0xffF83B01)))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/Icon (6).png")),
                        SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                        Text(
                          "Log out",
                          style: appStyle(
                              fw: FontWeight.w400,
                              size: 18,
                              color: const Color(0xffF83B01)),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
