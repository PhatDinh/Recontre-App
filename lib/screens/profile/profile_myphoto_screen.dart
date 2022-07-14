import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPhotoScreen extends StatelessWidget {
  const MyPhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const CardRadius = 10.0;
    return Scaffold(
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
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
          title: Text("My Photos"),
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
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.93,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Wrap(
                              children: [
                                ImagePicker(CardRadius: CardRadius),
                                ImagePicker(CardRadius: CardRadius),
                                ImagePicker(CardRadius: CardRadius),
                                ImagePicker(CardRadius: CardRadius),
                                ImagePicker(CardRadius: CardRadius),
                                ImagePicker(CardRadius: CardRadius),
                                ImagePicker(CardRadius: CardRadius),
                                ImagePicker(CardRadius: CardRadius),
                                ImagePicker(CardRadius: CardRadius),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                    child: Text(
                                  "You can add up to 9 images",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey),
                                )))
                          ]),
                    )),
              ),
            ),
          ],
        ));
  }
}

class ImagePicker extends StatelessWidget {
  const ImagePicker({
    Key? key,
    required this.CardRadius,
  }) : super(key: key);

  final double CardRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 160,
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
      child: DottedBorder(
          color: Colors.grey[350]!,
          strokeWidth: 3,
          radius: Radius.circular(CardRadius),
          dashPattern: [10, 5],
          customPath: (size) {
            return Path()
              ..moveTo(CardRadius, 0)
              ..lineTo(size.width - CardRadius, 0)
              ..arcToPoint(Offset(size.width, CardRadius),
                  radius: Radius.circular(CardRadius))
              ..lineTo(size.width, size.height - CardRadius)
              ..arcToPoint(Offset(size.width - CardRadius, size.height),
                  radius: Radius.circular(CardRadius))
              ..lineTo(CardRadius, size.height)
              ..arcToPoint(Offset(0, size.height - CardRadius),
                  radius: Radius.circular(CardRadius))
              ..lineTo(0, CardRadius)
              ..arcToPoint(Offset(CardRadius, 0),
                  radius: Radius.circular(CardRadius));
          },
          child: Center(
              child: Icon(
            CupertinoIcons.plus,
            color: Colors.grey[350],
            size: 24,
          ))),
    );
  }
}
