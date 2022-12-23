import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otasda/scanner_page.dart';
import 'package:otasda/data_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  //padding constants
  final double horizontalPadding = 30;
  final double verticalPadding = 30;

  int _currentIndex = 0;

  List<Widget> children = [];

  // @override
  // initState() {
  //   super.initState();
  //   log(children[0].toString());
  // }

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NavBar()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScannerPage()),
      );
    } else {
      const DataPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_rounded),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Data Record',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
