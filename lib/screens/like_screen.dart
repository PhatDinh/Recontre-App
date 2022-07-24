import 'package:flutter/material.dart';
import 'package:recontre/screens/messageDetails_screen.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 4 / 6,
      children: [
        ProfileCard(
          function: () {
            Navigator.push(context, MaterialPageRoute(builder: (builder) {
              return MessagedetailsWidget();
            }));
          },
          url: "assets/avatar/Male1.jpg",
        ),
        ProfileCard(
          url: "assets/avatar/Female1.jpg",
        ),
        ProfileCard(
          url: "assets/avatar/Female2.jpg",
        ),
        ProfileCard(
          url: "assets/avatar/Female3.jpg",
        ),
        ProfileCard(
          url: "assets/avatar/Male4.jpg",
        ),
        ProfileCard(
          url: "assets/avatar/Male3.jpg",
        ),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  final VoidCallback? function;
  final String? url;
  const ProfileCard({
    Key? key,
    this.url,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.45,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 8,
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                url!,
                //fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 1,
              right: 0,
              left: 0,
              child: InkWell(
                onTap: function,
                child: Image.asset(
                  "assets/icon-orange/Icon_Like.png",
                  height: 50,
                ),
              ),
            )
          ])),
    );
  }
}
