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
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
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
                        width: 342,
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
                  child: Stack(children: const <Widget>[
                    Positioned(
                        top: 5,
                        left: 5,
                        child: Text(
                          '12',
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
                        )),
                  ]))),

          // Matched people's avatars
          // Positioned(
          //     top: 216,
          //     left: 23,
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: Color.fromRGBO(255, 255, 255, 1),
          //       ),
          //       padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          //       child: Row(
          //         mainAxisSize: MainAxisSize.min,
          //         children: <Widget>[
          //           null,
          //           SizedBox(width: 16),
          //           null,
          //           SizedBox(width: 16),
          //           null,
          //           SizedBox(width: 16),
          //           null,
          //           SizedBox(width: 16),
          //           null,
          //         ],
          //       ),
          //     )),

          // 'Conversation' text
          const Positioned(
              top: 347,
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
          // Positioned(
          //     top: 383,
          //     left: 24,
          //     child: Container(
          //         width: 342,
          //         height: 369,
          //         decoration: BoxDecoration(
          //           color: Color.fromRGBO(255, 255, 255, 1),
          //         ),
          //         child: Stack(children: <Widget>[
          //           Positioned(
          //               top: 252,
          //               left: 2,
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.only(
          //                     topLeft: Radius.circular(8),
          //                     topRight: Radius.circular(8),
          //                     bottomLeft: Radius.circular(8),
          //                     bottomRight: Radius.circular(8),
          //                   ),
          //                   boxShadow: [
          //                     BoxShadow(
          //                         color: Color.fromRGBO(
          //                             48, 41, 41, 0.07999999821186066),
          //                         offset: const Offset(0, 4),
          //                         blurRadius: 8)
          //                   ],
          //                   color: Color.fromRGBO(255, 255, 255, 1),
          //                 ),
          //                 padding:
          //                     EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //                 child: Row(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: <Widget>[
          //                     null,
          //                     SizedBox(width: 16),
          //                     null,
          //                   ],
          //                 ),
          //               )),
          //           Positioned(
          //               top: 333,
          //               left: 2,
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.only(
          //                     topLeft: Radius.circular(8),
          //                     topRight: Radius.circular(8),
          //                     bottomLeft: Radius.circular(8),
          //                     bottomRight: Radius.circular(8),
          //                   ),
          //                   boxShadow: [
          //                     BoxShadow(
          //                         color: Color.fromRGBO(48, 41, 41, 0.08),
          //                         offset: Offset(0, 4),
          //                         blurRadius: 8)
          //                   ],
          //                   color: Color.fromRGBO(255, 255, 255, 1),
          //                 ),
          //                 padding:
          //                     EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //                 child: Row(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: <Widget>[
          //                     null,
          //                     SizedBox(width: 16),
          //                     null,
          //                   ],
          //                 ),
          //               )),
          //           Positioned(
          //               top: 168,
          //               left: 2,
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.only(
          //                     topLeft: Radius.circular(8),
          //                     topRight: Radius.circular(8),
          //                     bottomLeft: Radius.circular(8),
          //                     bottomRight: Radius.circular(8),
          //                   ),
          //                   boxShadow: [
          //                     BoxShadow(
          //                         color: Color.fromRGBO(
          //                             48, 41, 41, 0.07999999821186066),
          //                         offset: Offset(0, 4),
          //                         blurRadius: 8)
          //                   ],
          //                   color: Color.fromRGBO(255, 255, 255, 1),
          //                 ),
          //                 padding:
          //                     EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //                 child: Row(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: <Widget>[
          //                     null,
          //                     SizedBox(width: 16),
          //                     null,
          //                   ],
          //                 ),
          //               )),
          //           Positioned(
          //               top: 84,
          //               left: 0,
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.only(
          //                     topLeft: Radius.circular(8),
          //                     topRight: Radius.circular(8),
          //                     bottomLeft: Radius.circular(8),
          //                     bottomRight: Radius.circular(8),
          //                   ),
          //                   boxShadow: [
          //                     BoxShadow(
          //                         color: Color.fromRGBO(
          //                             48, 41, 41, 0.07999999821186066),
          //                         offset: Offset(0, 4),
          //                         blurRadius: 8)
          //                   ],
          //                   color: Color.fromRGBO(255, 255, 255, 1),
          //                 ),
          //                 padding:
          //                     EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //                 child: Row(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: <Widget>[
          //                     null,
          //                     SizedBox(width: 16),
          //                     null,
          //                   ],
          //                 ),
          //               )),
          //           Positioned(
          //               top: 0,
          //               left: 2,
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.only(
          //                     topLeft: Radius.circular(8),
          //                     topRight: Radius.circular(8),
          //                     bottomLeft: Radius.circular(8),
          //                     bottomRight: Radius.circular(8),
          //                   ),
          //                   boxShadow: [
          //                     BoxShadow(
          //                         color: Color.fromRGBO(
          //                             48, 41, 41, 0.07999999821186066),
          //                         offset: Offset(0, 4),
          //                         blurRadius: 8)
          //                   ],
          //                   color: Color.fromRGBO(255, 255, 255, 1),
          //                 ),
          //                 padding:
          //                     EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //                 child: Row(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: <Widget>[
          //                     null,
          //                     SizedBox(width: 16),
          //                     null,
          //                   ],
          //                 ),
          //               )),
          //         ]))),
        ]));
  }
}
