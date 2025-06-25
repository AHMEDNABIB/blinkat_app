import 'package:blinket_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  TextEditingController searchController = TextEditingController();

  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"}
  ];
  var secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"}
  ];
  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"}
  ];
  var hosuehold = [
    {"img": "image 36.png"},
    {"img": "image 37.png"},
    {"img": "image 38.png"},
    {"img": "image 39.png"},
    {"img": "image 40.png"}
  ];

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
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Grocery & Kitchen",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold"),
            ],
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UiHelper.CustomImage(
                            img: grocerykitchen[index]['img'] ?? '',
                          ),
                        ),
                      ),
                      UiHelper.CustomText(
                        text: grocerykitchen[index]['text'] ?? '',
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 10,
                        fontfamily: "bold",
                      ),
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UiHelper.CustomImage(
                            img: secondgrocery[index]['img'] ?? '',
                          ),
                        ),
                      ),
                      UiHelper.CustomText(
                        text: secondgrocery[index]['text'] ?? '',
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 10,
                        fontfamily: "bold",
                      ),
                    ],
                  );
                },
                itemCount: secondgrocery.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Snacks & Drinks",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold"),
            ],
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UiHelper.CustomImage(
                            img: snacksanddrinks[index]['img'] ?? '',
                          ),
                        ),
                      ),
                      UiHelper.CustomText(
                        text: snacksanddrinks[index]['text'] ?? '',
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 10,
                        fontfamily: "bold",
                      ),
                    ],
                  );
                },
                itemCount: snacksanddrinks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
