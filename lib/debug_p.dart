import 'package:flutter/material.dart';


// String li2st(){
//   if( data3[index][4].toString() == tsrName2 || 
//         data3[index][4].toString() == 'TSR'){
//                           return
//                         }
// }

// EXAMPLE 1:
// STEP 1:FIND THE INDEX Of PARTICULAR OBJECT(element) VIA

// List_Name.indexOf(List_Name[index]); ----

// ex:_userTransactions.indexOf(_userTransactions[index]) 


// Step 2:REMOVE THE OBJECT AT PARTICULAR INDEX

// List_Name.removeAt(index);  ----

// ex: _userTransactions.removeAt(index);




// EXAMPLE 2:


// A bit late to the party but what I've found is that if you want 
//to manipulate a ListView or GridView it is paramount that you assign 
//a Key to each child Widget of the List/GridView

// In short Flutter compares widgets only by Type and not state. 
//Thus when the state is changed of the List represented in the List/GridView, 
//Flutter doesn't know which children should be removed as their Types 
//are still the same and checks out. The only issue Flutter picks up is 
//the number of items, which is why it only removes the last widget 
//in the List/GridView.

// Therefore, if you want to manipulate lists in Flutter, assign a Key 
//to the top level widget of each child. A more detailed explanation 
//is available in this article.

// This can be achieved be adding

//   return GridView.count(
//   shrinkWrap: true,
//   crossAxisCount: 2,
//   crossAxisSpacing: 5.0,
//   mainAxisSpacing: 5.0,
//   children: List.generate(urls.length, (index) {
//     //generating tiles with from list
//     return   GestureDetector(
//         key: UniqueKey(), //This made all the difference for me
//         onTap: () => {
//           setState(() {
//             currentUrls.removeAt(index);
//           }) 

//         },
//         child: FadeInImage( // A custom widget I made to display an Image from 
//             image:  NetworkImage(urls[index]),
//             placeholder: AssetImage('assets/error_loading.png') 
//             ),

//     );
//   }),

// );


// EXAMPLE 3:
// Try this:

// onLongPress: () {
//   _saved.remove(pair);
//   Navigator.of(context).pop();
//   _pushSaved();
// },


// EXAMPLE 4:
    // ListView.builder/GridView.builder(
    // itemBuilder: (BuildContext context, int index){
    // return Dismissible(
    // key: Key(selectServiceLocations[index].toString()),
    // onDismissed: (direction) {
    //   setState(() {
    //     selectServiceLocations.removeAt(index);
    //   });
    // },
    // child: Container(...)
    // }
  // )



  // QUESTION
// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Startup Name Generator',
//       home: RandomWords(),
//       theme: new ThemeData(
//         primaryColor: Colors.orange,
//       ),
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   RandomWordsState createState() => RandomWordsState();
// }

// class RandomWordsState extends State<RandomWords> {
//   final List<WordPair> _suggestions = <WordPair>[];
//   final TextStyle _biggerFont = const TextStyle(fontSize: 18);
//   final Set<WordPair> _saved = new Set<WordPair>();

//   _buildSuggestions() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       itemBuilder: (context, i) {
//         if (i.isOdd) return Divider();

//         final index = i ~/ 2;
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       },
//     );
//   }

//   Widget _buildRow(WordPair pair) {
//     final bool alreadySaved = _saved.contains(pair);

//     return ListTile(
//       title: Text(pair.asPascalCase, style: _biggerFont),
//       trailing: new Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//       ),
//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Startup Name Generator"),
//         actions: <Widget>[
//           new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved),
//         ],
//       ),
//       body: _buildSuggestions(),
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context).push(
//       new MaterialPageRoute(
//         builder: (BuildContext context) {
//           final Iterable<ListTile> tiles = _saved.map(
//             (WordPair pair) {
//               return new ListTile(

//            //this is the delete operation

//                 onLongPress: () {
//                   setState(() {
//                     _saved.remove(pair);
//                   });
//                 },
//                 title: new Text(
//                   pair.asPascalCase,
//                   style: _biggerFont,
//                 ),
//               );
//             },
//           );

//           final List<Widget> divided = ListTile.divideTiles(
//             context: context,
//             tiles: tiles,
//           ).toList();

//           return new Scaffold(
//             appBar: new AppBar(
//               title: const Text('Saved Suggestions'),
//             ),
//             body: new ListView(children: divided),
//           );
//         },
//       ),
//     );
//   }
// }




          // data3[index][4].removeAt(data3[inrdex][4].toString() == tsrName2);

          // SelectableText(
          //       // stable(),
          //       data3[index][4].toString() == tsrName2 ||
          //               data3[index][4].toString() == 'TSR'
          //           ? data3[index][4].toString(): '.',
          //           // : data3[index][4].removeAt(data3[index][4].toString() != tsrName2),

          //       //
          //       style: TextStyle(
          //         color: index == 0 ? Colors.blue : Colors.black,
          //         fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
          //         fontSize: index == 0 ? 20 : 14,
          //       ),
          //     ),




  //  check (_, index){
  //   if(data3[index][4].toString() == tsrName2 || data3[index][4].toString() == 'TSR'){
  //     String? digi = data3[index][4].removeAt('No Data Available');
  //   }
  // }

  // final ch = data3.removeWhere((item) => ['No Data Available'].contains(item));
  // stable() {
  //   List data3 = [];

  //   List result = [];

  //   for (var car in data3) {
  //     if (!['No Data Available'].contains(car)) {
  //       result.add(car);
  //     }
  //   }

    // setState(
    //   () {
    //     result = cars;
    //   },
    // );
  // }





  // ListView.builder(
  //     itemCount: data3.length,
  //     scrollDirection: Axis.vertical,
  //     shrinkWrap: true,
  //     itemBuilder: (_, index) {
  //       //
  //       int hi = data3.indexOf(data3[index]);
  //       // final yo = data3.removeAt(0);
  //       _stauff = data3[index][4]; //== tsrName2;

  //       if (_stuff == tsrName2) {
  //         data3.addAll(_stauff);
  //       }

  //       return Card(
  //         child: ListTile(
  //           leading: Checkbox(value: valuefirst, onChanged: onChanged),
  //           title: Text(_stauff[index][4].toString()),
  //           onTap: () {
  //             // print(chu);
  //             onChanged;
  //           },
  //         ),
  //       );
  //     },
  //   );