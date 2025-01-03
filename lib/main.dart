import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: Container(),
//     );
//   }
// }

// Alien - 정렬하기
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Title'),
      ),
      body: Container(),
    );
  }
}

// hello world 출력 및 drawer
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: const <Widget>[
//             DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//                 child: Text('Drawer Header Part')),
//             ListTile(
//               title: Text('Menu 1'),
//             )
//           ],
//         ),
//       ),
//       body: const Center(
//         child: Text('HELLO WORLD'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => print('clicked'),
//         child: const Icon(Icons.mouse),
//       ),
//     );
//   }
// }

// column, row 테이블
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: Container(
//         alignment: Alignment.topLeft,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           // crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width / 2,
//                   height: 200,
//                   color: Colors.blue,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width / 2,
//                   height: 200,
//                   color: Colors.red,
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width / 2,
//                   height: 200,
//                   color: Colors.green,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width / 2,
//                   height: 200,
//                   color: Colors.purple,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// stack
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         color: Colors.yellow,
//         child: Stack(
//           children: [
//             Container(
//               // width: MediaQuery.of(context).size.width,
//               // height: MediaQuery.of(context).size.height,
//               width: 200,
//               height: 200,
//               color: Colors.red,
//             ),
//             Container(
//               width: 200,
//               height: 200,
//               margin: const EdgeInsets.only(top: 50, left: 50),
//               color: Colors.blue,
//             ),
//             Container(
//               width: 200,
//               height: 200,
//               margin: const EdgeInsets.only(top: 100, left: 100),
//               color: Colors.green,
//             ),
//             Container(
//               width: 200,
//               height: 200,
//               margin: const EdgeInsets.only(top: 150, left: 150),
//               color: Colors.orange,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// GestureDetector 사용하여 터치 감지하기)
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: Center(
//         child: GestureDetector(
//             onTap: () => print("GestureDetector used."),
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.amber,
//             )),
//         // child: TextButton(
//         //     onPressed: () => print('TextButton clicked'),
//         //     child: const Text('Text Button')),
//       ),
//     );
//   }
// }

// ListView 사용하여 피드 만들기
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         // scrollDirection: Axis.horizontal,
//         children: [
//           postContainer(title: 'Title 1', color: Colors.yellow),
//           postContainer(title: 'Title 2', color: Colors.red),
//           postContainer(title: 'Title 3', color: Colors.green),
//           postContainer(title: 'Title 4', color: Colors.amber),
//           postContainer(title: 'Title 5', color: Colors.indigo),
//         ],
//       ),
//     );
//   }

//   Widget postContainer({String title = '', Color color = Colors.blue}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//             padding: const EdgeInsets.all(10),
//             child: Text(
//               title,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             )),
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: 200,
//           color: color,
//         ),
//       ],
//     );
//   }
// }

// ListView 효율적으로 사용하기
// class _MyHomePageState extends State<MyHomePage> {
//   final postList = [
//     {
//       'title': 'Sample Title 1',
//       'color': Colors.green,
//     },
//     {
//       'title': 'Sample Title 2',
//       'color': Colors.redAccent,
//     },
//     {
//       'title': 'Sample Title 3',
//       'color': Colors.amber,
//     },
//     {
//       'title': 'Sample Title 4',
//       'color': Colors.purpleAccent,
//     },
//     {
//       'title': 'Sample Title 5',
//       'color': Colors.teal,
//     },
//     {
//       'title': 'Sample Title 6',
//       'color': Colors.blueAccent,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: ListView.builder(
//         itemCount: postList.length,
//         itemBuilder: (BuildContext con, int index) {
//           return postContainer(
//             title: postList[index]['title'] as String,
//             color: postList[index]['color'] as Color,
//           );
//         },
//       ),
//     );
//   }

//   Widget postContainer({String title = '', Color color = Colors.blue}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//             padding: const EdgeInsets.all(10),
//             child: Text(
//               title,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             )),
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: 200,
//           color: color,
//         ),
//       ],
//     );
//   }
// }

// GridView 사용하기기
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: GridView(
//         scrollDirection: Axis.horizontal,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 4,
//           crossAxisSpacing: 15.0,
//           mainAxisSpacing: 12.0,
//         ),
//         children: [
//           postContainer(number: '1', colorData: Colors.amber),
//           postContainer(number: '2', colorData: Colors.greenAccent),
//           postContainer(number: '3', colorData: Colors.blueAccent),
//           postContainer(number: '4', colorData: Colors.redAccent),
//           postContainer(number: '5', colorData: Colors.amber),
//           postContainer(number: '6', colorData: Colors.greenAccent),
//           postContainer(number: '7', colorData: Colors.blueAccent),
//           postContainer(number: '8', colorData: Colors.redAccent),
//           postContainer(number: '9', colorData: Colors.amber),
//           postContainer(number: '10', colorData: Colors.greenAccent),
//           postContainer(number: '11', colorData: Colors.blueAccent),
//           postContainer(number: '12', colorData: Colors.redAccent),
//         ],
//       ),
//     );
//   }

//   Widget postContainer({String number = '0', Color colorData = Colors.amber}) {
//     return Container(
//       height: 200,
//       color: colorData,
//       // padding: EdgeInsets.all(20),
//       child: Center(child: Text('Box $number')),
//     );
//   }
// }

// GridView 효율적으로 사용하기기
// class _MyHomePageState extends State<MyHomePage> {
//   final postList = [
//     {
//       'number': '1',
//       'color': Colors.blueAccent,
//     },
//     {
//       'number': '2',
//       'color': Colors.lightGreen,
//     },
//     {
//       'number': '3',
//       'color': Colors.blueGrey,
//     },
//     {
//       'number': '4',
//       'color': Colors.orangeAccent,
//     },
//     {
//       'number': '5',
//       'color': Colors.deepPurple,
//     },
//     {
//       'number': '6',
//       'color': Colors.yellow,
//     },
//     {
//       'number': '7',
//       'color': Colors.lightBlue,
//     },
//     {
//       'number': '8',
//       'color': Colors.redAccent,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, crossAxisSpacing: 15.0, mainAxisSpacing: 12.0),
//         itemCount: postList.length,
//         itemBuilder: (BuildContext con, int index) {
//           return postContainer(
//               number: postList[index]['number'] as String,
//               colorData: postList[index]['color'] as Color);
//         },
//       ),
//     );
//   }

//   Widget postContainer({String number = '0', Color colorData = Colors.amber}) {
//     return Container(
//       height: 200,
//       color: colorData,
//       // padding: EdgeInsets.all(20),
//       child: Center(child: Text('Box $number')),
//     );
//   }
// }

// 스크롤 기능 구현
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Test Title'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: MediaQuery.of(context).size.height / 3,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Container(
//                         width: MediaQuery.of(context).size.width,
//                         height: 300,
//                         color: Colors.blue,
//                       ),
//                       Container(
//                         width: MediaQuery.of(context).size.width,
//                         height: 300,
//                         color: Colors.purple,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height / 3,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Container(
//                         width: MediaQuery.of(context).size.width,
//                         height: 300,
//                         color: Colors.red,
//                       ),
//                       Container(
//                         width: MediaQuery.of(context).size.width,
//                         height: 300,
//                         color: Colors.orange,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height / 3,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Container(
//                         width: MediaQuery.of(context).size.width,
//                         height: 300,
//                         color: Colors.green,
//                       ),
//                       Container(
//                         width: MediaQuery.of(context).size.width,
//                         height: 300,
//                         color: Colors.pink,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
