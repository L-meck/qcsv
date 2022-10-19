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
  // final List<WordPair> _suggestions = <WordPair>[];
  List stuff = [];
  List<List<dynamic>> stauff = [];

//
  _redone() {
    return ListView.builder(
      // itemCount: data3.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        //
        int hi = data3.indexOf(data3[index]);
        // final yo = data3.removeAt(0);
        stuff = data3[index][4]; //== tsrName2;

        if (stuff != tsrName2) {
          data3.addAll(stauff);
        }
        return _buildColumn(stauff[index][4]);
      },
    );
  }

  Widget _buildColumn(pair) {
    return Card(
      child: ListTile(
        leading: Checkbox(value: valuefirst, onChanged: onChanged),
        title: Text(pair[index][4].toString()),
        onTap: () {
          // print(chu);
          onChanged;
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
