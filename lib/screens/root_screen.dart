import 'package:flutter/material.dart';
import 'package:recontre/screens/messageDetails_screen.dart';
import 'package:recontre/screens/messageList_screen.dart';
import 'package:recontre/screens/profile/profile_screen.dart';
import 'package:recontre/screens/swipe_screen.dart';

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
        HomescreenWidget(),
        MessagelistWidget(),
      ],
    );
  }

  PreferredSizeWidget _getAppBar(int index) {
    if (index == 0) {
      return AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
        automaticallyImplyLeading: false,
        title: Text("Profile"),
      );
    } else if (index == 1) {
      return AppBar(
        automaticallyImplyLeading: false,
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
        title: Text("Notifications"),
      );
    } else if (index == 2) {
      return AppBar(
        automaticallyImplyLeading: false,
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
        title: Text("Swipe"),
      );
    } else if (index == 3) {
      return AppBar(
        automaticallyImplyLeading: false,
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
        title: Text("Message"),
      );
    }
    return AppBar(
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
      title: Text("Hello"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: _getAppBar(_selectedIndex),
        body: _getBody(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 15,
            unselectedFontSize: 15,
            selectedItemColor: Colors.grey,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                  label: "Profile",
                  activeIcon: Image.asset(
                    "assets/icon-orange/Icon_Profile.png",
                    height: 50,
                  ),
                  icon: Image.asset(
                    "assets/icon/Icon_Profile.png",
                    height: 50,
                  )),
              BottomNavigationBarItem(
                  label: "Notification",
                  activeIcon: Image.asset(
                    "assets/icon-orange/Icon_Notifications.png",
                    height: 50,
                  ),
                  icon: Image.asset(
                    "assets/icon/Icon_Notifications.png",
                    height: 50,
                  )),
              BottomNavigationBarItem(
                  label: "Swipe",
                  activeIcon: Image.asset(
                    "assets/icon-orange/Icon_Swipe.png",
                    height: 50,
                  ),
                  icon: Image.asset(
                    "assets/icon/Icon_Swipe.png",
                    height: 50,
                  )),
              BottomNavigationBarItem(
                  label: "Chat",
                  activeIcon: Image.asset(
                    "assets/icon-orange/Icon_Chat.png",
                    height: 50,
                  ),
                  icon: Image.asset(
                    "assets/icon/Icon_Chat.png",
                    height: 50,
                  )),
              BottomNavigationBarItem(
                  label: "Menu",
                  activeIcon: Image.asset(
                    "assets/icon-orange/Icon_Menu.png",
                    height: 50,
                  ),
                  icon: Image.asset(
                    "assets/icon/Icon_Menu.png",
                    height: 50,
                  ))
            ]),
      ),
    );
  }
}
