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
      itemCount: data3.length, //must be added to avoid runtime/segfault
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        // //
        int hi = data3.indexOf(data3[index]); //index of the element
        // var yo = data3.removeAt(2);

        // int g = data3.lastIndexOf(data3, data3[index][4]);

        // print("no: of Customers: $g");

        // var o = stauff.map((e) {
        //   return print('e: - ${e[4]}');
        // });
        // .toSet()
        // .toList();

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

        for (int i = 0; i < data3.length; i++) {
          for (int j = 0; j < data3.elementAt(i).length; j++) {
            //   debugPrint("one: ${(data3.elementAt(i).elementAt(0))}");

            //   debugPrint("two: ${(data3.elementAt(i).elementAt(1).toString())}");

            //   debugPrint(
            //       "three: ${(data3.elementAt(i).elementAt(2).toString())}");
          }
        }
        var kok = data3
            .map((data) => [
                  data[0].toString(),
                  data[1].toString(),
                  data[2].toString(),
                  data[3].toString(),
                  data[4].toString(),
                  data[5].toString(),
                ])
            // .toSet()
            .toList();

        var account = kok[index][0];
        var customer_name = kok[index][1];
        var street = kok[index][2];
        var phone = kok[index][3];
        var tsr_name = kok[index][4];
        var task = kok[index][5];

        var tezt = tsr_name;

        // var separated = data3.map((value) {
        //   if (value.contains(tsrName2)) {
        //     return print('d: ---- ${value[2].toString()}');
        //   }
        // }).toList();

        if (tsr_name == tsrName2 || tsr_name == 'TSR') {
          data3.map((value) {
            if (value.contains(tsrName2)) {
              print('d: ---- ${value[4].toString()}');
              print('d: ---- ${value[2].toString()}');
            }
          }).toList();
        }

        

        return _buildColumn(tsr_name, hi);
      },
    );
  }

  Widget _buildColumn(ind, dat) {
    return Card(
      child: ListTile(
        leading: Checkbox(value: valuefirst, onChanged: onChanged),
        title: Text(ind),
        subtitle: Text('$dat'),
        onTap: () {
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
      children: const [
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
