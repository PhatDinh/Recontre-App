import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final bool isText; //true = text; false = image;
  final bool isSender; //true = sender; false = receiver;
  final String? textContent;
  final String? imagePath;

  const ChatBubble(
      {Key? key,
      required this.isText,
      required this.isSender,
      this.textContent,
      this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(33, 28, 28, 0.07999999821186066),
                offset: Offset(0, 4),
                blurRadius: 8)
          ],
          gradient: LinearGradient(
              begin: Alignment(0.5, 0.5),
              end: Alignment(-0.5, 0.5),
              colors: isSender
                  ? [
                      Color.fromRGBO(255, 255, 255, 1),
                      Color.fromRGBO(255, 255, 255, 1)
                    ]
                  : [
                      Color.fromRGBO(251, 135, 1, 1),
                      Color.fromRGBO(239, 180, 28, 1),
                    ]),
        ),
        padding: isText
            ? EdgeInsets.symmetric(horizontal: 12, vertical: 6)
            : EdgeInsets.zero,
        child: isText
            ? Text(
                textContent!,
                textAlign: isSender ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    color: isSender
                        ? Color.fromRGBO(32, 29, 29, 1)
                        : Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath!,
                  fit: BoxFit.contain,
                  alignment:
                      isSender ? Alignment.centerRight : Alignment.centerLeft,
                )),
      ),
    );
  }
}

class MessagedetailsWidget extends StatefulWidget {
  @override
  _MessagedetailsWidgetState createState() => _MessagedetailsWidgetState();
}

class _MessagedetailsWidgetState extends State<MessagedetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          color: Color.fromRGBO(253, 246, 235, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
            top: 125,
            left: 24,
            child: Container(
                width: 345,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: ListView(
                    scrollDirection: Axis.vertical,
                    children: const <Widget>[
                      ChatBubble(
                        isText: true,
                        isSender: true,
                        textContent: 'Hi Trang',
                      ),
                      SizedBox(height: 18),
                      ChatBubble(
                        isText: true,
                        isSender: false,
                        textContent: 'Nice to meet you',
                      ),
                      SizedBox(height: 18),
                      ChatBubble(
                        isText: true,
                        isSender: false,
                        textContent:
                            "Sorry I'm at work, would you like to come over some time",
                      ),
                      SizedBox(height: 18),
                      ChatBubble(
                        isText: false,
                        isSender: false,
                        imagePath: "assets/avatar/Male1.jpg",
                      ),
                    ])),
          ),

          /*Positioned(
              top: 321,
              left: 70,
              child: Container(
                  width: 211,
                  height: 176,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Chatimage.png'),
                        fit: BoxFit.fitWidth),
                  ))),

          Positioned(
              top: 461,
              left: 24,
              child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/avatar/Male1.jpg'),
                        fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.all(Radius.elliptical(36, 36)),
                  ))),

          //Positioned(top: 756, left: 0, child: null),

          /*
          Positioned(
              top: 33,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(48, 41, 41, 0.07999999821186066),
                        offset: Offset(0, 4),
                        blurRadius: 8)
                  ],
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          null,
                          SizedBox(width: 16),
                          null,
                          SizedBox(width: 16),
                          Text(
                            'Minh Trang',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(32, 29, 29, 1),
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 50),
                    Container(
                        width: 100,
                        height: 48.000003814697266,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0.000004196293048153166,
                              left: 52,
                              child: null),
                          Positioned(
                              top: 48.000003814697266, left: 48, child: null),
                        ])),
                  ],
                ),
              )),*/

          //Positioned(top: 0, left: 0, child: null),

          Positioned(
              top: 515,
              left: 199,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(33, 28, 28, 0.07999999821186066),
                        offset: Offset(0, 4),
                        blurRadius: 8)
                  ],
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'OK maybe next time',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color.fromRGBO(32, 29, 29, 1),
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),

          Positioned(
              top: 272,
              left: 70,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(33, 28, 28, 0.07999999821186066),
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
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Sorry, I’m at work :(',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 223,
              left: 282,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(33, 28, 28, 0.07999999821186066),
                        offset: Offset(0, 4),
                        blurRadius: 8)
                  ],
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'You OK?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color.fromRGBO(32, 29, 29, 1),
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 174,
              left: 85,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(33, 28, 28, 0.07999999821186066),
                        offset: Offset(0, 4),
                        blurRadius: 8)
                  ],
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Can we meet at the station, 8pm? :))',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color.fromRGBO(32, 29, 29, 1),
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 125,
              left: 260,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(33, 28, 28, 0.07999999821186066),
                        offset: Offset(0, 4),
                        blurRadius: 8)
                  ],
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Hello Trang',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color.fromRGBO(32, 29, 29, 1),
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),*/
        ]));
  }
}
