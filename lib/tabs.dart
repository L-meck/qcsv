import 'package:flutter/material.dart';

class YourStats extends StatelessWidget {
  
  List<List<dynamic>> data3 = [];
  String? tsrName2;
  YourStats({Key? key, required this.data3, required this.tsrName2})
      : super(key: key);

  bool valuefirst = true;
  final bool valuefirst2 = false;
  Function(bool?)? onChanged;
//   final List<WordPair> _suggestions = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data3.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        //
        return data3[index][4].toString() == tsrName2
            ? Card(
                child: ListTile(
                  leading: Checkbox(value: valuefirst, onChanged: onChanged),
                  title: Text(data3[index][4].toString()),
                  onTap: () {
                    print(tsrName2);
                    onChanged;
                  },
                ),
              )
            : Divider();
      },
    );
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
