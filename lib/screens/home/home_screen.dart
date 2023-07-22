import 'package:course_app_ui/color/colors.dart';
import 'package:course_app_ui/screens/chat/chat_screen.dart';
import 'package:course_app_ui/screens/home/custom_gradient_box.dart';
import 'package:course_app_ui/screens/home/event_list.dart';
import 'package:course_app_ui/screens/home/home_screen_body.dart';
import 'package:course_app_ui/screens/home/lesson_list.dart';
import 'package:course_app_ui/screens/home/program_list.dart';
import 'package:course_app_ui/screens/hub/hub_screen.dart';
import 'package:course_app_ui/screens/learn/learn_screen.dart';
import 'package:course_app_ui/screens/profile/profile_screen.dart';
import 'package:course_app_ui/utils/title_row.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreenBody(),
    LearnScreen(),
    HubScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hub),
              label: 'Hub',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.portrait_rounded),
              label: 'Profile',
            )
          ],
        ),
        body:  _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}


