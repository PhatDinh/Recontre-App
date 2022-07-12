import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.65,
            child: Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CarouselSlider(
                          items: [1, 2].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Image.asset(
                                  "assets/avatar/Female1.jpg",
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  fit: BoxFit.fitWidth,
                                );
                              },
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 350,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.9,
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Vu Tran Minh Hanh, 24",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Ho Chi Minh City, Vietnam",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/icon/Icon_Setting.png",
                height: 75,
                color: Color.fromRGBO(240, 180, 28, 100),
              ),
              Image.asset(
                "assets/icon/Icon_Profile.png",
                height: 75,
                color: Color.fromRGBO(240, 180, 28, 100),
              ),
              Image.asset(
                "assets/icon/Icon_Profile.png",
                height: 75,
                color: Color.fromRGBO(240, 180, 28, 100),
              ),
            ],
          ),
        )
      ],
    );
  }
}
