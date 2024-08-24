import 'package:flutter/material.dart';
import 'package:havenhub/misc/colors.dart';
import 'package:havenhub/widgets/app_largetext.dart';
import 'package:havenhub/widgets/app_text.dart';
import 'package:havenhub/widgets/responsive_button.dart';
import 'package:havenhub/pages/login_page.dart'; // Import the login page

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    List images = [
      "welcome-one.png",
      "welcome-two.png",
      "welcome-three.png",
      "Welcome-four.png"
    ];

    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/" + images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Views", size: 30),
                      SizedBox(height: 20),
                      Container(
                        width: 250,
                        child: AppText(
                          text: "Mountain Hikes to heal you from the inside and get over everything you are going through",
                          color: Colors.black,
                          size: 14,
                        ),
                      ),
                      SizedBox(height: 40),
                      ResponsiveButton(
                        width: 120,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(4, (indexDots) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 4),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots
                              ? AppColors.mainColor
                              : AppColors.mainColor,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
