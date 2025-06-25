import 'package:blinket_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "Blinket in",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                            fontfamily: "bold")
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "16 minutes",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: "bold")
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "HOME ",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14),
                        UiHelper.CustomText(
                            text: "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14)
                      ],
                    ),
                  ],
                ),
              ),
              const Positioned(
                right: 20,
                bottom: 95,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: UiHelper.CustomeTextField(
                  controller: searchController,
                  text: "Search 'ice-cream'",
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          UiHelper.CustomImage(img: "cart.png"),
          SizedBox(
            height: 20,
          ),
          UiHelper.CustomText(
              text: "Reordering will be easy",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 16,
              fontfamily: "bold"),
          UiHelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          UiHelper.CustomText(
            text: "them again easily.",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                text: "BestSeller",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "milk.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 66),
                    child: UiHelper.CustomButton(
                      () {},
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "potato.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 66),
                    child: UiHelper.CustomButton(
                      () {},
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "tomato.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 66),
                    child: UiHelper.CustomButton(
                      () {},
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
