import 'package:flutter/material.dart';

class YourStats extends StatelessWidget {
  List<List<dynamic>> data3 = [];
  String? tsrName2;
  YourStats({Key? key, required this.data3, required this.tsrName2})
      : super(key: key);

  //  check (_, index){
  //   if(data3[index][4].toString() == tsrName2 || data3[index][4].toString() == 'TSR'){
  //     String? digi = data3[index][4].removeAt('No Data Available');
  //   }
  // }

  // final ch = data3.removeWhere((item) => ['No Data Available'].contains(item));
  stable() {
    List data3 = [];

    List result = [];

    for (var car in data3) {
      if (!['No Data Available'].contains(car)) {
        result.add(car);
      }
    }

    // setState(
    //   () {
    //     result = cars;
    //   },
    // );
  }

  bool valuefirst = true;
  final bool valuefirst2 = false;
  Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data3.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          // data3[index][4].removeAt(data3[inrdex][4].toString() == tsrName2);
          return Card(
            child: ListTile(
              leading: Checkbox(value: valuefirst, onChanged: onChanged),
              title: SelectableText(
                // stable(),
                data3[index][4].toString() == tsrName2 ||
                        data3[index][4].toString() == 'TSR'
                    ? data3[index][4].toString()
                    : data3[index][4].removeAt(data3[index][4].toString() != tsrName2),

                //
                style: TextStyle(
                  color: index == 0 ? Colors.blue : Colors.black,
                  fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
                  fontSize: index == 0 ? 20 : 14,
                ),
              ),
              onTap: () {
                print(tsrName2);
                onChanged;
              },
            ),
          );
        });
  }
}

class BatteryWarnings extends StatelessWidget {
  const BatteryWarnings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [],
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
      children: [],
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
