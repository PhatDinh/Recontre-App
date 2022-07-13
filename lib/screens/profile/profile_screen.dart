import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recontre/screens/profile/profile_myphoto_screen.dart';

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
            height: MediaQuery.of(context).size.height * 0.7,
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
                        padding: const EdgeInsets.only(left: 15, bottom: 15),
                        child: Text(
                          "Ho Chi Minh City, Vietnam",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Wrap(children: [
                        BioTab(
                          name: "Painting",
                          icon: CupertinoIcons.paintbrush,
                        ),
                        BioTab(
                            name: "Traveling", icon: CupertinoIcons.paperplane),
                        BioTab(
                          name: "Gaming",
                          icon: CupertinoIcons.game_controller,
                        )
                      ]),
                    ],
                  ),
                )),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => MyPhotoScreen()));
                },
                child: Image.asset(
                  "assets/icon/Icon_Profile.png",
                  height: 75,
                  color: Color.fromRGBO(240, 180, 28, 100),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BioTab extends StatelessWidget {
  final String? name;
  final IconData? icon;
  const BioTab({
    this.name,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 10),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(
              icon!,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              name!,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            )
          ]),
        ),
      ),
    );
  }
}
