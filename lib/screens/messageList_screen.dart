import 'package:flutter/material.dart';

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
          // "Message" text
          const Positioned(
              top: 64,
              left: 24,
              child: Text('Message',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ))),

          // Search box
          Positioned(
              top: 114,
              left: 24,
              child: Container(
                width: 345,
                height: 40,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      "assets/icon/Status=Inactive, Type=Search.png",
                      height: 24,
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
                                  border: InputBorder.none,
                                  hintText: "Search conversation...",
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(194, 188, 188, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ))),
                        )),
                  ],
                ),
              )),

          // 'My matches' text
          const Positioned(
              top: 180,
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
              top: 177,
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
              top: 216,
              left: 23,
              child: Container(
                width: 345,
                height: 134,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    // Person 1
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage("assets/avatar/Male1.jpg"),
                        backgroundColor: Colors.transparent,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 64,
                        child: const Text('Minh Nguyen',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                            textAlign: TextAlign.center),
                      ),
                    ]),
                    const SizedBox(width: 16),

                    // Person 2
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            AssetImage("assets/avatar/Female1.jpg"),
                        backgroundColor: Colors.transparent,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 64,
                        child: const Text('Nguyet Phan',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                            textAlign: TextAlign.center),
                      ),
                    ]),
                    const SizedBox(width: 16),

                    // Person 3
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage("assets/avatar/Male2.jpg"),
                        backgroundColor: Colors.transparent,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 64,
                        child: const Text('Minh Luan',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                            textAlign: TextAlign.center),
                      ),
                    ]),
                    const SizedBox(width: 16),

                    // Person 4
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            AssetImage("assets/avatar/Female2.jpg"),
                        backgroundColor: Colors.transparent,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 64,
                        child: const Text('Thanh Tran',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                            textAlign: TextAlign.center),
                      ),
                    ]),
                    const SizedBox(width: 16),

                    // Person 5
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage("assets/avatar/Male3.jpg"),
                        backgroundColor: Colors.transparent,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 64,
                        child: const Text('Tuan Nguyen',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                            textAlign: TextAlign.center),
                      ),
                    ]),
                    const SizedBox(width: 16),

                    // Person 6
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            AssetImage("assets/avatar/Female3.jpg"),
                        backgroundColor: Colors.transparent,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 64,
                        child: const Text('Hoai Thuong',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                            textAlign: TextAlign.center),
                      ),
                    ]),
                  ],
                ),
              )),

          // 'Conversation' text
          const Positioned(
              top: 367,
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
            top: 393,
            left: 24,
            child: Container(
              width: 342,
              height: 369,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              child:
                  ListView(scrollDirection: Axis.vertical, children: <Widget>[
                // Person 1
                Container(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    const CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage("assets/avatar/Male1.jpg"),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(height: 20, width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        // Name
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text('Minh Nguyen',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Spacer(),
                              Text('3h',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      color: Color.fromRGBO(128, 116, 116, 1),
                                      fontWeight: FontWeight.normal)),
                            ]),

                        const SizedBox(height: 5),
                        // Latest message
                        const Text('You: Okay, maybe next time.',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: Color.fromRGBO(128, 116, 116, 1),
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ]),
                ),
              ]),
            ),
          )
        ]));
  }
}
