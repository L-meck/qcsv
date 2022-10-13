import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qcsv/tabs.dart';
import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle, rootBundle;
import 'package:csv/csv.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class DataStats extends StatefulWidget {
  const DataStats({Key? key}) : super(key: key);

  @override
  State<DataStats> createState() => _DataStatsState();
}

class _DataStatsState extends State<DataStats> {
  //
  void _searchButtoneTapped() {}

  int tabs = 3;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                      'Hi, \nTSR Name',
                      style: GoogleFonts.oswald(
                        fontSize: 50,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade300,
                      ),
                      child: const Icon(
                        Icons.search,
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
                    labelColor: Colors.blue,
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelColor: Colors.black,
                    // labelStyle: GoogleFonts.bebasNeue(
                    //   fontSize: 32,
                    // ),
                    //isScrollable: true,
                    tabs: [
                      Tab(

                        child: Text(
                          "Your Stats",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 14
                            
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Battery Warnings",
                          style: GoogleFonts.bebasNeue(fontSize: 14),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Cylinder Warnings",
                          style: GoogleFonts.bebasNeue(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: TabBarView(
                      children:  [
                       YourStats(),
                       BatteryWarnings(),
                       CylinderWarnings(),
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
