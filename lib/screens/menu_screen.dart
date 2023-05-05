import 'package:flutter/material.dart';
import 'package:pdf_app/screens/map.dart';
import 'package:pdf_app/screens/profile.dart';
import 'package:pdf_app/screens/vocher.dart';
import 'package:pdf_app/screens/youtube_chanel.dart';

import '../utils/colors.dart';


class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  int _currentIndex = 0;
  final List<Widget> _pages = [const YouTubeChanel(), MapScreen(),const Vocher(),const Profile()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (v){
          setState(() {
            _currentIndex = v;
          });
        },
        selectedItemColor:  AppColor.blackColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.wifi_channel),label: "YouTube Chanel"),
          BottomNavigationBarItem(icon: Icon(Icons.map),label: "Map"),
          BottomNavigationBarItem(icon: Icon(Icons.token),label: "Voucher"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    ),);
  }
}
