import 'dart:math';
import 'package:otasda/scanner_page.dart';
import 'package:otasda/home_page.dart';

import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  int _currentIndex = 2;

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
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ScannerPage()),
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

      // body: Column(
      //   children: [
      //     // PaginatedDataTable(
      //       // source: _data,
      //       // columns: const [

      //       ],
      //       )
      // ]
    );
    // );
    // }
  }

// class MyData extends DataPage {
//   final List<Map<String, dynamic>> _data = List.generate(
//       200,
//       (index) => {
//             "id": index,
//             "Timestamp": "Time $index",
//             "price": Random().nextInt(100)
//           });

//   DataRow? getRow(int index) {
//     return DataRow(cells: [
//       DataCell(Text(_data[index]['id'].toString())),
//       DataCell(Text(_data[index]['Timestamp'])),
//       DataCell(Text(_data[index]['price'].toString())),
//     ]);
//   }

//   bool get isRowCountApproximate => false;
//   int get rowCount => _data.length;
//   int get selectedRowCount => throw UnimplementedError();
// }
}
