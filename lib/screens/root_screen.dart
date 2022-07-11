import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _getBody(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello"),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                label: "Profile",
                icon: Image.asset(
                  "assets/icon/Icon_Profile.png",
                  height: 50,
                )),
            BottomNavigationBarItem(
                label: "Notification",
                icon: Image.asset(
                  "assets/icon/Icon_Notifications.png",
                  height: 50,
                )),
            BottomNavigationBarItem(
                label: "Swipe",
                icon: Image.asset(
                  "assets/icon/Icon_Swipe.png",
                  height: 50,
                )),
            BottomNavigationBarItem(
                label: "Chat",
                icon: Image.asset(
                  "assets/icon/Icon_Chat.png",
                  height: 50,
                )),
            BottomNavigationBarItem(
                label: "Menu",
                icon: Image.asset(
                  "assets/icon/Icon_Menu.png",
                  height: 50,
                ))
          ]),
    );
  }
}
