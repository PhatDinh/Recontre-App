import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recontre/others/AnimatedToggle.dart';
import 'package:recontre/screens/profile/profile_myphoto_screen.dart';
import 'package:recontre/screens/profile/profile_screen.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(251, 156, 45, 1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "Save",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                )),
          )
        ],
        title: Text(
          "Profile Detail",
          style: TextStyle(fontSize: 18),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromRGBO(239, 180, 28, 1),
                Color.fromRGBO(251, 135, 1, 1)
              ],
            ),
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AnimatedToggle(
              values: ['Edit Profile', 'Preview'],
              onToggleCallback: (value) {},
              buttonColor: Color.fromRGBO(251, 156, 45, 1),
              backgroundColor: const Color(0xFFFFFFFF),
              textColor: Colors.white,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.825,
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "My Photos",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => MyPhotoScreen()));
                            },
                            child: ImagePicker(CardRadius: 10)),
                        ImagePicker(CardRadius: 10),
                        ImagePicker(CardRadius: 10),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Bio",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 156, 45, 1))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 8),
                            child: Text(
                              "Vui vẻ chân thành. Thích nghe nhạc, xem phim, đọc sách",
                              maxLines: 1,
                              style: TextStyle(
                                  color: Color.fromRGBO(251, 156, 45, 1),
                                  fontSize: 17),
                              overflow: TextOverflow.fade,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Hobbies",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            BioTab(
                              name: "Painting",
                              check: false,
                              icon: CupertinoIcons.paintbrush,
                            ),
                            BioTab(
                                name: "Traveling",
                                check: false,
                                icon: CupertinoIcons.paperplane),
                            BioTab(
                              name: "Gaming",
                              check: false,
                              icon: CupertinoIcons.game_controller,
                            ),
                            BioTab(
                              name: "Gaming",
                              check: false,
                              icon: CupertinoIcons.game_controller,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Personal Information",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    PersonalTab(
                      content: "Martial Status",
                      icon: CupertinoIcons.heart,
                      contentInfo: "Single",
                    ),
                    PersonalTab(
                      content: "Education",
                      icon: CupertinoIcons.book,
                      contentInfo: "Bachelor",
                    ),
                    PersonalTab(
                      content: "Living city",
                      icon: CupertinoIcons.location,
                      contentInfo: "Ho Chi Minh",
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PersonalTab extends StatelessWidget {
  final String? content;
  final String? contentInfo;
  final IconData? icon;
  const PersonalTab({
    this.content,
    this.icon,
    this.contentInfo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon!,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                content!,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Container(
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromRGBO(251, 156, 45, 1))),
              padding: EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Center(
                  child: Text(
                    contentInfo!,
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(251, 156, 45, 1),
                        fontSize: 18),
                    overflow: TextOverflow.fade,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
