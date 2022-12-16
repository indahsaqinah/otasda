import 'package:flutter/material.dart';
import 'package:otasda/login_page.dart';
import 'package:otasda/scanner_page.dart';
import 'package:otasda/data_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  State<HomePage> createState() => __HomePageState();
}

class __HomePageState extends State<HomePage> {
  //padding constants
  final double horizontalPadding = 30;
  final double verticalPadding = 30;

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ScannerPage(),
    DataPage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
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
        // body: SafeArea(
        //     child: Column(
        //   children: [
        //     Row(
        //       children: [
        //         Padding(
        //           padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Text(
        //                 "Welcome,",
        //                 style: TextStyle(fontSize: 18),
        //               ),
        //               Text(
        //                 "USER.",
        //                 style: TextStyle(fontSize: 40),
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        //       Center(
        //         child: Material(
        //           color: Colors.grey[300],
        //           elevation: 8,
        //           borderRadius: BorderRadius.circular(10),
        //           clipBehavior: Clip.antiAliasWithSaveLayer,
        //           child: InkWell(
        //             splashColor: Colors.black26,
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                     builder: (context) => const ScannerPage()),
        //               );
        //             },
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               crossAxisAlignment: CrossAxisAlignment.center,
        //               // mainAxisSize: MainAxisSize.min,
        //               children: [
        //                 Ink.image(
        //                   image: const AssetImage(
        //                       'assets/images/digital-camera.png'),
        //                   height: 100,
        //                   width: 100,
        //                 ),
        //                 const SizedBox(height: 6),
        //                 const Text(
        //                   'Scan',
        //                   style: TextStyle(fontSize: 20, color: Colors.black),
        //                 ),
        //                 const SizedBox(height: 6),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ]),
        //     Padding(
        //       padding: const EdgeInsets.all(50.0),
        //       child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        //         Center(
        //           child: Material(
        //             color: Colors.grey[300],
        //             elevation: 8,
        //             borderRadius: BorderRadius.circular(10),
        //             clipBehavior: Clip.antiAliasWithSaveLayer,
        //             child: InkWell(
        //               splashColor: Colors.black26,
        //               onTap: () {
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: (context) => const DataPage()),
        //                 );
        //               },
        //               child: Column(
        //                 mainAxisSize: MainAxisSize.min,
        //                 children: [
        //                   Ink.image(
        //                     image: const AssetImage('assets/images/table.png'),
        //                     height: 100,
        //                     width: 100,
        //                   ),
        //                   const SizedBox(height: 6),
        //                   const Text(
        //                     'Data Record',
        //                     style: TextStyle(fontSize: 20, color: Colors.black),
        //                   ),
        //                   const SizedBox(height: 6),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //       ]),
        //     )
        //   ],
        // ))
      );
  }
}
