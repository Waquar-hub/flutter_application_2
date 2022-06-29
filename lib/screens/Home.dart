import 'package:flutter/material.dart';

import '../home_page.dart/home_page.dart';
import '../home_page.dart/more.dart';
import '../home_page.dart/my_room.dart';
import '../home_page.dart/wallet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  final List<Widget> pages = [
    HomePage(),
    MyRoom(),
    Wallet(),
    MorePage(),
  ];
  late double deviceheight, deviceWidth;
  @override
  Widget build(BuildContext context) {
    deviceheight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(),
      body: pages[currentPage],
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      // selectedItemColor: Colors.blue,
      currentIndex: currentPage,
      onTap: (index) {
        setState(() {
          currentPage = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          label: "Home",
          icon: Icon(
            Icons.home,
            size: 20,
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          label: "MyRoom",
          icon: Icon(Icons.my_library_books),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          label: "Wallet",
          icon: Icon(Icons.wallet),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          label: "MorePage",
          icon: Icon(Icons.more),
        ),
      ],
    );
  }
}
