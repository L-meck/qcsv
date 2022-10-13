import 'package:flutter/material.dart';
import 'package:qcsv/tabs.dart';

class DataStats extends StatefulWidget {
  const DataStats({Key? key}) : super(key: key);

  @override
  State<DataStats> createState() => _DataStatsState();
}

class _DataStatsState extends State<DataStats> {
  void _searchButtoneTapped() {}

  List tabOptions = const [
    ["Your Stats", YourStats()],
    ["Battery Warnings", BatteryWarnings()],
    ["Cylinder Warnings", CylinderWarnings()],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      'Hi, TSR Name',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade200,
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
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelColor: Colors.grey,
                    // labelStyle: GoogleFonts.bebasNeue(
                    //   fontSize: 32,
                    // ),
                    //isScrollable: true,
                    tabs: [
                      Tab(
                        child: Text(
                          tabOptions[0][0],
                        ),
                      ),
                      Tab(
                        child: Text(
                          tabOptions[1][0],
                        ),
                      ),
                      Tab(
                        child: Text(
                          tabOptions[2][0],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        tabOptions[0][1],
                        tabOptions[1][1],
                        tabOptions[2][1],
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
