import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:qcsv/tabs.dart';

import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/services.dart' show SystemUiOverlayStyle, rootBundle;

import 'package:csv/csv.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class DataStats extends StatelessWidget {
  String? tsrName1;

  DataStats({Key? key, required this.tsrName1}) : super(key: key);

//   @override
//   State<DataStats> createState() => _DataStatsState();
// }

// class _DataStatsState extends State<DataStats> with TickerProviderStateMixin {
//   //
//   void _searchButtoneTapped() {}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Hi, \n$tsrName1',
                      style: GoogleFonts.oswald(
                        fontSize: 50,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade300,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        // Icons.bar_chart_outlined,
                        size: 36,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 600,
              child: Column(
                children: [
                  TabBar(
                    ////////////////////
                    isScrollable: true,
                    labelColor: Colors.blue,
                    indicator: CircleTab(radius: 4.0, color: Colors.blue),
                    labelPadding: const EdgeInsets.only(left: 24.0),
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelColor: Colors.black,
                    labelStyle: GoogleFonts.montserrat(
                      fontSize: 32,
                    ),
                    tabs: [
                      Tab(
                        // icon: Icon(Icons.looks_one),
                        child: Text(
                          "Your Stats",
                          style: GoogleFonts.montserrat(fontSize: 20),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Battery Tasks",
                          style: GoogleFonts.montserrat(fontSize: 14),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Cylinder Tasks",
                          style: GoogleFonts.montserrat(fontSize: 14),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Repos/Not Cooking",
                          style: GoogleFonts.montserrat(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        YourStats(),
                        BatteryWarnings(),
                        CylinderWarnings(),
                        NotCookingRepo(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleTab extends Decoration {
  final Color color;
  double radius;

  CircleTab({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
