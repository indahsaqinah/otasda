import 'package:flutter/material.dart';
import 'package:otasda/scanner_page.dart';
import 'package:otasda/data_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //padding constants
  final double horizontalPadding = 30;
  final double verticalPadding = 30;

  int _currentIndex = 0;

  List<Widget> children = [];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
<<<<<<< HEAD
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScannerPage()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DataPage()),
      );
=======
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  ScannerPage()),
      );
    } else {
      const DataPage();
>>>>>>> c7671eab36ee5d1fefb0f6e991c48e14a121417b
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
        body: SafeArea(
            child: Column(
          children: [
<<<<<<< HEAD
            const SizedBox(height: 50),
=======
>>>>>>> c7671eab36ee5d1fefb0f6e991c48e14a121417b
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
<<<<<<< HEAD
                    children: [
=======
                    children: const [
>>>>>>> c7671eab36ee5d1fefb0f6e991c48e14a121417b
                      Text(
                        "Welcome,",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "USER.",
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                )
              ],
            ),
<<<<<<< HEAD
            const SizedBox(height: 80),
=======
>>>>>>> c7671eab36ee5d1fefb0f6e991c48e14a121417b
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Material(
                  color: Colors.grey[300],
                  elevation: 8,
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
<<<<<<< HEAD
                            builder: (context) => const ScannerPage()),
=======
                            builder: (context) =>  ScannerPage()),
>>>>>>> c7671eab36ee5d1fefb0f6e991c48e14a121417b
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
<<<<<<< HEAD
=======
                      // mainAxisSize: MainAxisSize.min,
>>>>>>> c7671eab36ee5d1fefb0f6e991c48e14a121417b
                      children: [
                        Ink.image(
                          image: const AssetImage(
                              'assets/images/digital-camera.png'),
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Scan',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const SizedBox(height: 6),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
<<<<<<< HEAD
              padding: const EdgeInsets.all(60.0),
=======
              padding: const EdgeInsets.all(50.0),
>>>>>>> c7671eab36ee5d1fefb0f6e991c48e14a121417b
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Center(
                  child: Material(
                    color: Colors.grey[300],
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DataPage()),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('assets/images/table.png'),
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Data Record',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          const SizedBox(height: 6),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            )
          ],
        )));
  }
}
