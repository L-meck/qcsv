// import 'package:flutter/material.dart';
// import 'package:csv/csv.dart';
// import 'package:flutter/services.dart' show rootBundle;

// class Fux extends StatefulWidget {
//    Fux({Key? key}) : super(key: key);
//  @override
//       State<Fux> createState() => _FuxState();

//       //
//     List<List<dynamic>> data = [];
//     loadAsset() async {
//       final myData = await rootBundle.loadString("assets/s.csv");
//       List<List<dynamic>> csvTable = const CsvToListConverter().convert(myData);

//       data = csvTable;
//       debugPrint(data.toString()); 

     
//     }

//     class _FuxState extends State<Fux> {
//       @override
//       Widget build(BuildContext context) {


//       return Column(
//         children: [
//           ElevatedButton(
//               onPressed: () => loadAsset(), child: const Text('loadCSV')),
//           SingleChildScrollView(
//             child: Table(
//               border: TableBorder.all(width: 1.0),
//               children: data.map((item) {
//                 return TableRow(
//                     children: item.map((row) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       row.toString(),
//                     ),
//                   );
//                 }).toList());
//               }).toList(),
//             ),
//           ),
//         ],
//       );
//     }
//   }
// }


