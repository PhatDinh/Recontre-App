import 'package:flutter/material.dart';
import 'package:recontre/screens/messageDetails_screen.dart';

class PeopleAvatar extends StatelessWidget {
  final String imagePath;
  final double size;

  const PeopleAvatar({Key? key, required this.imagePath, this.size = 32})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: Colors.transparent,
    );
  }
}

class MatchPeople extends StatelessWidget {
  final String imagePath;
  final String name;

  const MatchPeople({Key? key, required this.imagePath, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MessagedetailsWidget()),
          );
        },
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          PeopleAvatar(imagePath: imagePath),
          const SizedBox(height: 10),
          SizedBox(
            width: 64,
            child: Text(name,
                style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center),
          ),
        ]));
  }
}

class Conversation extends StatelessWidget {
  final String imagePath;
  final String name;
  final String latestMesssage;
  final String time;

  const Conversation(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.latestMesssage,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Person 1
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MessagedetailsWidget()),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(48, 41, 41, 0.08),
                offset: Offset(0, 4),
                blurRadius: 8)
          ],
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          PeopleAvatar(imagePath: imagePath),
          const SizedBox(height: 20, width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Name
              SizedBox(
                width: 240,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(name,
                          style: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text(time,
                          style: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(128, 116, 116, 1),
                              fontWeight: FontWeight.normal)),
                    ]),
              ),

              const SizedBox(height: 5),
              // Latest message
              Text(latestMesssage,
                  style: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      color: Color.fromRGBO(128, 116, 116, 1),
                      fontWeight: FontWeight.normal)),
            ],
          ),
        ]),
      ),
    );
  }
}

class MessagelistWidget extends StatefulWidget {
  @override
  _MessagelistWidgetState createState() => _MessagelistWidgetState();
}

class _MessagelistWidgetState extends State<MessagelistWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 844,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(253, 246, 235, 1),
        ),
        child: Stack(children: <Widget>[
          // Search box
          Positioned(
              top: 24,
              left: 24,
              child: Container(
                height: 40,
                width: 345,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: Color.fromRGBO(194, 188, 188, 1),
                    width: 1,
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/icon/Status=Inactive, Type=Search.png",
                      height: 24,
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.medium,
                    ),
                    //spacing
                    const SizedBox(
                      width: 10,
                    ),
                    //textfield need a sizedbox to limit its width
                    const SizedBox(
                      width: 279,
                      child: Material(
                        color: Color.fromRGBO(0, 0, 0, 0),
                        child: TextField(
                            cursorColor: Colors.black,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                              color: Color.fromRGBO(194, 188, 188, 1),
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 11),
                                border: InputBorder.none,
                                hintText: "Search conversation...",
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(194, 188, 188, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ))),
                      ),
                    ),
                  ],
                ),
              )),

          // 'My matches' text
          const Positioned(
              top: 90,
              left: 24,
              child: Text(
                'My matches',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color.fromRGBO(32, 29, 29, 1),
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1),
              )),

          // Orange circle
          Positioned(
              top: 87,
              left: 132,
              child: Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color:
                              Color.fromRGBO(48, 41, 41, 0.07999999821186066),
                          offset: Offset(0, 4),
                          blurRadius: 8)
                    ],
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0.5),
                        end: Alignment(-0.5, 0.5),
                        colors: [
                          Color.fromRGBO(239, 180, 28, 1),
                          Color.fromRGBO(251, 135, 1, 1)
                        ]),
                  ),
                  child: (const Positioned(
                      top: 5,
                      left: 5,
                      child: Center(
                          child: Text(
                        '6',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      )))))),

          // Matched people's avatars
          Positioned(
              top: 126,
              left: 24,
              child: Container(
                width: 345,
                height: 134,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    // Person 1
                    MatchPeople(
                        imagePath: "assets/avatar/Male1.jpg",
                        name: 'Minh Nguyen'),
                    SizedBox(width: 16),
                    // Person 2
                    MatchPeople(
                        imagePath: "assets/avatar/Female1.jpg",
                        name: 'Nguyet Phan'),
                    SizedBox(width: 16),
                    // Person 3
                    MatchPeople(
                        imagePath: "assets/avatar/Male2.jpg",
                        name: 'Minh Luan'),
                    SizedBox(width: 16),
                    // Person 4
                    MatchPeople(
                        imagePath: "assets/avatar/Female2.jpg",
                        name: 'Thanh Tran'),
                    SizedBox(width: 16),
                    // Person 5
                    MatchPeople(
                        imagePath: "assets/avatar/Male3.jpg",
                        name: 'Tuan Nguyen'),
                    SizedBox(width: 16),
                    // Person 6
                    MatchPeople(
                        imagePath: "assets/avatar/Female3.jpg",
                        name: 'Hoai Thuong'),
                  ],
                ),
              )),

          // 'Conversation' text
          const Positioned(
              top: 277,
              left: 24,
              child: Text(
                'Conversations',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color.fromRGBO(32, 29, 29, 1),
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1),
              )),

          // Chat list
          Positioned(
            top: 303,
            left: 24,
            child: Container(
              width: 345,
              height: 409,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const <Widget>[
                    Conversation(
                      imagePath: "assets/avatar/Male1.jpg",
                      name: 'Minh Nguyen',
                      latestMesssage: 'You: Okay, maybe next time.',
                      time: '30m',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Conversation(
                      imagePath: "assets/avatar/Male2.jpg",
                      name: 'Minh Luan',
                      latestMesssage: 'Nice to meet you',
                      time: '10h',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Conversation(
                      imagePath: "assets/avatar/Female1.jpg",
                      name: 'Nguyet Phan',
                      latestMesssage: 'Hello',
                      time: '11h',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Conversation(
                      imagePath: "assets/avatar/Male3.jpg",
                      name: 'Tuan Nguyen',
                      latestMesssage: 'You: I had fun today',
                      time: '21d',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Conversation(
                      imagePath: "assets/avatar/Female3.jpg",
                      name: 'Hoai Thuong',
                      latestMesssage: 'You: I miss you so much',
                      time: '100d',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Conversation(
                      imagePath: "assets/avatar/Female2.jpg",
                      name: 'Thanh Tran',
                      latestMesssage: 'How are you?',
                      time: '131d',
                    ),
                  ]),
            ),
          )
        ]));
  }
}
