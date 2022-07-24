import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recontre/screens/messageList_screen.dart';

import 'package:flutter/scheduler.dart';

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
          boxShadow: const [
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
                    decoration: TextDecoration.none,
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
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  String newText = "";
  final myController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  List<Widget> bubbleList = [
    ChatBubble(
      isText: true,
      isSender: true,
      textContent: 'Hi Minh',
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
      textContent: "Sorry I'm at work, would you like to come over some time",
    ),
    SizedBox(height: 18),
    ChatBubble(
      isText: false,
      isSender: false,
      imagePath: "assets/avatar/Male1.jpg",
    ),
  ];

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  void sendMessage() {
    newText = myController.text;
    myController.clear();
    setState(() {
      if (newText != "") {
        bubbleList = List.from(bubbleList)
          ..addAll([
            SizedBox(
              height: 18,
            ),
            ChatBubble(
              isText: true,
              isSender: true,
              textContent: newText,
            )
          ]);
      }
    });
  }

  void showBottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        isScrollControlled: true,
        builder: (BuildContext context) {
          return SingleChildScrollView(
              child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Safety Tool",
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.report,
                        size: 30,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('REPORT THIS USER',
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 15,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.xmark_circle,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "UNMATCH THIS USER",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ));
        });
  }

  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Safety Tool",
                style: TextStyle(fontSize: 40),
              ),
              Row(
                children: [Icon(Icons.report), Text('Report this user')],
              ),
              Row(
                children: [
                  Icon(CupertinoIcons.xmark_circle),
                  Text("Unmatch this user")
                ],
              )
            ],
          );
        });
  }

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
          // All bubble chats
          Positioned(
            top: 75,
            left: 24,
            child: Container(
                width: 345,
                height: 712,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView(
                      controller: _scrollController,
                      scrollDirection: Axis.vertical,
                      children: bubbleList),
                )),
          ),

          // Info of conversation
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Material(
                            color: Colors.transparent,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Image.asset("assets/icon/Back-Icon.png")),
                          ),
                          const SizedBox(width: 10),
                          const PeopleAvatar(
                              imagePath: "assets/avatar/Male1.jpg", size: 24),
                          const SizedBox(width: 16),
                          const Text(
                            'Minh Nguyen',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Color.fromRGBO(32, 29, 29, 1),
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                height: 1),
                          ),
                          const SizedBox(width: 30),
                          GestureDetector(
                            onTap: () => showBottomSheet(),
                            child: Image.asset(
                              "assets/icon-orange/Status=Active, Type=Report.png",
                              height: 48,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),

          // Chatbox
          Positioned(
            top: 787,
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(48, 41, 41, 0.07999999821186066),
                      offset: Offset(0, 4),
                      blurRadius: 8)
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: Material(
                  color: Colors.transparent,
                  child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        iconSize: 40,
                        icon: Image.asset(
                          "assets/icon-orange/Status=Active, Type=Photo.png",
                        )),
                    IconButton(
                        onPressed: () {},
                        iconSize: 35,
                        icon: Image.asset(
                          "assets/icon-orange/Status=Active, Type=Emote.png",
                        )),
                    SizedBox(
                      width: 194,
                      child: TextField(
                          controller: myController,
                          cursorColor: Color.fromRGBO(194, 188, 188, 1),
                          textAlignVertical: TextAlignVertical.center,
                          style: const TextStyle(
                            color: Color.fromRGBO(194, 188, 188, 1),
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 13),
                              border: InputBorder.none,
                              hintText: "Type something...",
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(194, 188, 188, 1),
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ))),
                    ),
                    IconButton(
                        onPressed: () {
                          sendMessage();
                          SchedulerBinding.instance.addPostFrameCallback((_) {
                            _scrollController.jumpTo(
                                _scrollController.position.maxScrollExtent);
                          });
                        },
                        iconSize: 60,
                        icon: Image.asset(
                          "assets/icon-orange/Status=Active, Type=Send.png",
                        ))
                  ])),
            ),
          ),
        ]));
  }
}
