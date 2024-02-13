import 'package:assignment_6/size_config.dart';
import 'package:assignment_6/text_style.dart';
import 'package:flutter/material.dart';

class OrderNow extends StatelessWidget {
  const OrderNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342 * Sizeconfig.horizontalBlock,
      height: 184 * Sizeconfig.verticalBlock,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
              colors: [Color(0xffFE8800), Color.fromARGB(255, 248, 59, 1)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                colorBlendMode: BlendMode.lighten,
                image: const AssetImage("assets/Pattern.png"),
                width: 342 * Sizeconfig.horizontalBlock,
                height: 184 * Sizeconfig.verticalBlock,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              right: 0,
              top: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image(
                  height: 184 * Sizeconfig.verticalBlock,
                  image: const AssetImage("assets/Image.png"),
                  fit: BoxFit.fitHeight,
                ),
              )),
          Positioned(
            left: 10,
            top: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get your 30% daily\n discount now!",
                  style: appStyle(
                      fw: FontWeight.w500, size: 18, color: Colors.white),
                ),
                SizedBox(height: 10 * Sizeconfig.verticalBlock),
                SizedBox(
                  height: 44 * Sizeconfig.verticalBlock,
                  width: 171 * Sizeconfig.horizontalBlock,
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    child: Text(
                      "Order now",
                      style: appStyle(
                          fw: FontWeight.w400, size: 18, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
