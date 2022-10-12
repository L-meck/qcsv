import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  String appName = 'Q:Stats';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: appName),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<List<dynamic>> _data = [];
  String? _tsrName;
  String? _fileName;
  String? filePath;
  String? checky;
  String selectedItem = 'TSR';
  dynamic currentStep = 0;

  // _formState() {
  //   selectedItem = _data[4] as String;
  // }
/////////////////////////////////
    int _currentStep = 0;

  _stepState(int step) {
    if (_currentStep > step) {
      return StepState.complete;
    } else {
      return StepState.editing;
    }
  }

  _steps() => [
        Step(
          title: const Text('Address'),
          content: const _AddressForm(),
          state: _stepState(0),
          isActive: _currentStep == 0,
        ),
        Step(
          title: const Text('Card Details'),
          content: const _CardForm(),
          state: _stepState(1),
          isActive: _currentStep == 1,
        ),
        Step(
          title: const Text('Overview'),
          content: const _Overview(),
          state: _stepState(2),
        )
      ];
//////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stepper(
        currentStep: currentStep,
        onStepTapped: (index) {
          setState(() {
            currentStep = index;
          });
        },
        onStepContinue: () {
          if (currentStep != 2) {
            setState(() {
              currentStep += 1;
              _tsrName;            
            });
          }
        },
        onStepCancel: () {
          if (currentStep != 0) {
            setState(() {
              currentStep -= 1;
            });
          }
        },
        controlsBuilder: (BuildContext context, ControlsDetails details) {
          return Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: details.onStepContinue,
                  child: const Text('NEXT'),
                ),
                TextButton(
                  onPressed: details.onStepCancel,
                  child: const Text('BACK'),
                ),
              ],
            ),
          );
        },
        steps: <Step>[
          Step(
            state: currentStep <= 0 ? StepState.editing : StepState.complete,
            isActive: currentStep <= 0 ? false : true,
            title: const Text('Choose CSV File:'),
            content: GestureDetector(
              onTap: () => _pickFile(),
              child: Container(
                decoration:  BoxDecoration(
                    color: _fileName == null ? Colors.blueGrey :Colors.green,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                height: 100,
                child: Row(
                  children: [
                    _fileName == null
                        ? Center(
                            child: Row(
                              children: const [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.0, right: 8.0),
                                  child: Icon(
                                    Icons.coronavirus_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Tap to select a your file',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        : Row(
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 8.0),
                                child: Icon(
                                  Icons.tips_and_updates_sharp,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                _fileName.toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                  ],
                ),
              ),
            ),
          ),
          Step(
            state: currentStep <= 1 ? StepState.editing : StepState.complete,
            isActive: currentStep <= 1 ? false : true,
            title: const Text('Choose your name:'),
            content: Column(
              children: [
                DropdownButton(
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: _data.map((item) {
                    return DropdownMenuItem(
                      value: selectedItem,
                      child: GestureDetector(
                        child: Text(
                          item[4].toString(),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _tsrName = item[4].toString();
                          });
                        },
                      ),
                    );
                  }).toList(),
                  onChanged: (String? val) {
                    setState(() {
                      selectedItem = _tsrName.toString();
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                        color: _tsrName == null ? Colors.blueGrey : Colors.green,
                        borderRadius: const BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text(
                        _tsrName.toString(),
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Step(
          //   // state: currentStep <= 0 ? StepState.editing : StepState.complete,
          //   isActive: currentStep <= 0 ? false : true,
          //   state: StepState.complete,
          //   // isActive: selectedItem == null || selectedItem == 'TSR' ? false : true, //Navigate to stats and warnings
          //   title: const Text('Check your Warnings & Stats:'),
          //   content: Container(color: Colors.amber),
          // ),
        ],
      ),
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: false,
      allowedExtensions: ['csv'],
    );

    // if no file is picked
    if (result == null) return;
    // we will log the name, size and path of the
    // first picked file (if multiple are selected)
    debugPrint('Niko hapa: ${result.files.first.name}');

    checky = result.files.first.name;
    filePath = result.files.first.path!;

    final input = File(filePath!).openRead();
    final fields = await input
        .transform(utf8.decoder)
        .transform(const CsvToListConverter())
        .toList();

    debugPrint('Niko Pale: $fields');

    setState(
      () {
        _fileName = checky;
        _data = fields;
      },
    );
  }
}

class _AddressForm extends StatelessWidget {
  const _AddressForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Street',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'City',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Postcode',
          ),
        ),
      ],
    );
  }
}

class _CardForm extends StatelessWidget {
  const _CardForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Card number',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Expiry date',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'CVV',
          ),
        ),
      ],
    );
  }
}
class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(child: Text('Thank you for your order!')),
      ],
    );
  }
}