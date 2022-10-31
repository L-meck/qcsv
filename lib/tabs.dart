import 'dart:io';

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

        var o = stauff.map((e) {
          return print('e: - ${e[4]}');
        });
        // .toSet()
        // .toList();

        print('nem: -- $tsrName2');
        print('tl: -- $o');
        print('j:-- ${stauff[index][4].toString()}');

        // stuff = stauff[index][4];

        if (o == tsrName2 || o == 'TSR') {
          print('chikko: -- $tsrName2');
        }

        // stauff.sort((a, b) {
        //   return a.name.toLowerCase().compareTo(b.name.toLowerCase());
        // });

        // print('stauff before >> :$stauff  \n \n \n');

        return _buildColumn(hi, stauff); //stauff[index][4].toString());
      },
    );
  }

  Widget _buildColumn(ind, dat) {
    return Card(
      child: ListTile(
        leading: Checkbox(value: valuefirst, onChanged: onChanged),
        title: Text(ind.toString()), //TODO:
        subtitle: Text(dat.toString()),
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
