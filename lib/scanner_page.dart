import 'package:flutter/material.dart';
import 'package:otasda/data_page.dart';
import 'package:otasda/home_page.dart';

import 'package:flutter_tesseract_ocr/flutter_tesseract_ocr.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  String dropdownvalue = 'OLT';

  // List of items in our dropdo[mkl,,,,g4+swn menu
  var items = [
    'OLT',
    'FDC',
    'FDP',
    'Customer side',
  ];

  int _currentIndex = 1;

  List<Widget> children = [];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else if (index == 1) {
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DataPage()),
      );
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
        ),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Location",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  DropdownButton(
                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    Theme.of(context).colorScheme.onPrimary,
                                backgroundColor:
                                    Theme.of(context).colorScheme.primary,
                              ).copyWith(
                                  elevation: ButtonStyleButton.allOrNull(0.0)),
                              onPressed: () async {
                                // --- Pick Gallery
                                // _pickImage(ImageSource.gallery);
                              },
                              child: const Text('Pick Gallery'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.red,
                              ).copyWith(
                                  elevation: ButtonStyleButton.allOrNull(0.0)),
                              onPressed: () {
                                // --- Take Photo
                                // _pickImage(ImageSource.camera);
                              },
                              child: const Text('Take Photo'),
                            ),
                          )
                        ]),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Wavelength (nm)",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                width: 150,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(9), // Added this
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Power (dBm)",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                width: 150,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(9), // Added this
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromARGB(255, 16, 56, 87), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25), // <-- Radius
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Center(
                          child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                    ),
                    onPressed: () async {},
                  )),
            ],
          ),
        ));
  }
}
