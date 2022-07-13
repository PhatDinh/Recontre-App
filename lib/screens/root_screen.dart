import 'package:flutter/material.dart';
import 'package:recontre/screens/messageDetails_screen.dart';
import 'package:recontre/screens/messageList_screen.dart';
import 'package:recontre/screens/profile/profile_screen.dart';

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

  Widget _getBody(int index) {
    return IndexedStack(
      index: index,
      children: [
        ProfileScreen(),
        ProfileScreen(),
        ProfileScreen(),
        MessagelistWidget(),
        MessagedetailsWidget()
      ],
    );
  }

  PreferredSizeWidget _getAppBar(int index) {
    if (index == 0) {
      return AppBar(
        centerTitle: true,
        title: Text("Profile"),
      );
    } else if (index == 1) {
      return AppBar(
        title: Text("Notifications"),
      );
    } else if (index == 2) {
      return AppBar(
        title: Text("Swipe"),
      );
    } else if (index == 3) {
      return AppBar(
        title: Text("Message"),
      );
    }
    return AppBar(
      title: Text("Hello"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(_selectedIndex),
      body: _getBody(_selectedIndex),
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
