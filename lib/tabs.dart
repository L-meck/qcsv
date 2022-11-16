import 'package:flutter/material.dart';

class YourStats extends StatelessWidget {
  List<List<dynamic>> data3 = [];
  String? tsrName2;

  static var index;
  YourStats({Key? key, required this.data3, required this.tsrName2})
      : super(key: key);

  bool valuefirst = true;
  final bool valuefirst2 = false;
  Function(bool?)? onChanged;
  List<String> _suggestions = <String>[];

  // *******************************
  // List<String> stuff = [];

  List<List<dynamic>> stauff = [];
  List<List<dynamic>> tsrLine = [];
   var lastChance = <String>[];

//
  _redone() {
    return ListView.builder(
      itemCount: data3.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        // //
        int hi = data3.indexOf(data3[index]); //index of the element
        // var yo = data3.removeAt(2);
        stauff = data3;

        // int g = data3.lastIndexOf(data3, data3[index][4]);

        // print("no: of Customers: $g");

        // var o = stauff.map((e) {
        //   return print('e: - ${e[4]}');
        // });
        // .toSet()
        // .toList();

        var kokoto = stauff[index][4];
        final kokot = stauff[index][5];
        // print('nem: -- $tsrName2');
        // print('tl: -- $o');
        // print('j:-- ${stauff[index][4].toString()}');
        print(kokoto);
        print(hi);

        // tsrLine = kokoto as List<List>;
        // var yellow = data3.indexOf(tsrLine);
        // print(yellow.toString());
        // stuff = stauff[index][4];
        // print('kokoto=:'' $kokot');

        // if (kokoto == tsrName2 || kokoto == 'TSR') {
        //   print('chikko: -- $kokoto');
        //   kokot.map((value) {
        //     if (value.contains(tsrName2)) {
        //       return Text('d: ---- $value');
        //     }
        //   }).toList();
        // }
        // stauff.sort((a, b) {
        //   return a.name.toLowerCase().compareTo(b.name.toLowerCase());
        // });

        // print('stauff before >> :$stauff  \n \n \n');
        var lastChance = kokoto;
        var kok = lastChance.asMap();
        kok.keys.toList();

        return _buildColumn(kok, hi);
      },
    );
  }

  Widget _buildColumn(ind, dat) {
    return Card(
      child: ListTile(
        leading: Checkbox(value: valuefirst, onChanged: onChanged),
        title:
            Text('$ind'), //ind == tsrName2 || ind == 'TSR' ? ind : ''), //TODO:
        subtitle: Text('$dat'),
        onTap: () {
          // print('\n pair \n ^^ \n $pair');
          // print('\n tsrname2: $tsrName2');
          // onChanged;
        },
      ),
    );
  }

//
  @override
  Widget build(BuildContext context) {
    return _redone();
  }
}

class BatteryWarnings extends StatelessWidget {
  const BatteryWarnings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //
      ],
    );
  }
}

class CylinderWarnings extends StatelessWidget {
  const CylinderWarnings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NotCookingRepo extends StatelessWidget {
  const NotCookingRepo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //
      ],
    );
  }
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<List<dynamic>> _data = [];
  String? filePath;
  String? _selectedItem = 'Street';
  //
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [],
    );
  }
}

// class TableLayout extends StatefulWidget {
//   @override
//   _TableLayoutState createState() => _TableLayoutState();
// }

// class _TableLayoutState extends State<TableLayout> {
//   List<List<dynamic>> data = [];
//   loadAsset() async {
//     final myData = await rootBundle.loadString("assets/ford.csv");
//     List<List<dynamic>> csvTable = const CsvToListConverter().convert(myData);
//     print(csvTable);
//     data = csvTable;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       // floatingActionButton: FloatingActionButton(
//       //     child: Icon(Icons.refresh),
//       //     onPressed: () async {
//       //       await loadAsset();
//       //       //print(data);
//       //     }),
//       appBar: AppBar(
//         title: Text("Table Layout and CSV"),
//       ),
//       body: SingleChildScrollView(
//         child: Table(
//           columnWidths: const {
//             0: FixedColumnWidth(100.0),
//             1: FixedColumnWidth(200.0),
//           },
//           border: TableBorder.all(width: 1.0),
//           children: data.map((item) {
//             return TableRow(
//                 children: item.map((row) {
//               return Container(
//                 color:
//                     row.toString().contains("NA") ? Colors.red : Colors.green,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     row.toString(),
//                     style: const TextStyle(fontSize: 20.0),
//                   ),
//                 ),
//               );
//             }).toList());
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
