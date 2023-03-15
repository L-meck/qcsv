// import 'package:flutter/material.dart';
// import 'package:csv/csv.dart';
// import 'dart:async' show Future;
// import 'package:flutter/services.dart' show rootBundle;


// class CSVScreen extends StatefulWidget {
//   @override
//   _CSVScreenState createState() => _CSVScreenState();
// }

// class _CSVScreenState extends State<CSVScreen> {
//   List<List<dynamic>> data = [];
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     loadCSV();
//   }

//   Future<void> loadCSV() async {
//     final csvData =
//         await rootBundle.loadString('assets/data.csv');
//     final decoded = CsvToListConverter().convert(csvData);
//     setState(() {
//       data = decoded;
//       isLoading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('CSV Screen'),
//       ),
//       body: isLoading
//           ? CircularProgressIndicator()
//           : SingleChildScrollView(
//               child: DataTable(
//                 columns: data[0]
//                     .map((e) => DataColumn(
//                           label: Text(e.toString()),
//                         ))
//                     .toList(),
//                 rows: data
//                     .sublist(1)
//                     .map((e) => DataRow(
//                           cells: e
//                               .map((e) => DataCell(
//                                     Text(e.toString()),
//                                   ))
//                               .toList(),
//                         ))
//                     .toList(),
//               ),
//             ),
//     );
//   }
// }


