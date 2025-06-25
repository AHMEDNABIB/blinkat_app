import 'package:blinket_clone/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinket_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(
              img: "Blinkit Onboarding Screen.png",
              height: 350,
            ),
            const SizedBox(height: 30),
            UiHelper.CustomImage(img: "image 10.png"),
            const SizedBox(height: 20),
            UiHelper.CustomText(
                text: "India’s last minute app",
                color: const Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 20,
                fontfamily: "bold"),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFFFFFFFF)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomText(
                        text: "Sujal",
                        color: Color(0XFF000000),
                        fontweight: FontWeight.w500,
                        fontsize: 14),
                    const SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                        text: "78277XXXX",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                        fontfamily: "bold"),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 40,
                      width: 295,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomNavScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                  text: "Login  with",
                                  color: const Color(0XFFFFFFFF),
                                  fontweight: FontWeight.bold,
                                  fontsize: 14,
                                  fontfamily: "bold"),
                              const SizedBox(
                                width: 5,
                              ),
                              UiHelper.CustomImage(img: "image 9.png")
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    UiHelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: const Color(0XFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontsize: 10),
                    const SizedBox(
                      height: 15,
                    ),
                    UiHelper.CustomText(
                        text: "or login with phone number",
                        color: const Color(0XFF269237),
                        fontweight: FontWeight.normal,
                        fontsize: 14)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
