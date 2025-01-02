import 'package:flutter/material.dart';
import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight,
      constraints: BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hi, \nim Rivaldo Hardianto Wibowo \n Flutter Developer",
              style: TextStyle(
                fontSize: 30.0,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF4C021),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  "Get in touch",
                  style: TextStyle(
                    color: CustomColor.whitePrimary,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
        Image.asset(
          "cat_cute.png",
          width: screenWidth / 2,
          height: screenHeight / 1.4,
          fit: BoxFit.contain,
        ),
      ]),
    );
  }
}
