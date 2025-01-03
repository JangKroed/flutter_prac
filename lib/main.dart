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
      theme: ThemeData(primarySwatch: Colors.blue),
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
//         title: const Text('Flutter App'),
//       ),
//       body: Container(),
//     );
//   }
// }

// Botton Navigation Bar, 화면하단 네비게이션 바 배치 및 setState 사용
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(
        () => setState(() => _selectedIndex = _tabController.index));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: _selectedIndex == 0
          ? tabContainer(context, Colors.indigo, 'Friends Tab')
          : _selectedIndex == 1
              ? tabContainer(context, Colors.amber[600] as Color, 'Chats Tab')
              : tabContainer(context, Colors.blueGrey, 'Settings Tab'),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: [
            Tab(
              icon: Icon(
                _selectedIndex == 0 ? Icons.person : Icons.person_2_outlined,
              ),
              text: 'Friends',
            ),
            Tab(
              icon: Icon(
                _selectedIndex == 1 ? Icons.chat : Icons.chat_outlined,
              ),
              text: 'Chats',
            ),
            Tab(
              icon: Icon(
                _selectedIndex == 2 ? Icons.settings : Icons.settings_outlined,
              ),
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  Widget tabContainer(BuildContext con, Color tabColor, String tabText) {
    return Container(
      width: MediaQuery.of(con).size.width,
      height: MediaQuery.of(con).size.height,
      color: tabColor,
      child: Center(
        child: Text(
          tabText,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
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

// Alien - 정렬하기
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: Container(
//         child: Stack(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               color: Colors.black26,
//             ),
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 150,
//                 color: Colors.brown,
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: Container(
//                 margin: const EdgeInsets.only(left: 40, bottom: 150),
//                 width: 100,
//                 height: 100,
//                 color: Colors.amber,
//               ),
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: Container(
//                 margin: const EdgeInsets.only(bottom: 200),
//                 width: 200,
//                 height: 70,
//                 color: Colors.lightBlue,
//               ),
//             ),
//             // Align(
//             //   alignment: Alignment.topLeft,
//             //   child: Container(
//             //     width: 100,
//             //     height: 100,
//             //     color: Colors.amber,
//             //   ),
//             // ),
//             // Align(
//             //   alignment: Alignment.topCenter,
//             //   child: Container(
//             //     width: 100,
//             //     height: 100,
//             //     color: Colors.blue,
//             //   ),
//             // ),
//             // Align(
//             //   alignment: Alignment.topRight,
//             //   child: Container(
//             //     width: 100,
//             //     height: 100,
//             //     color: Colors.green,
//             //   ),
//             // ),
//             // Align(
//             //   alignment: Alignment.centerLeft,
//             //   child: Container(
//             //     width: 100,
//             //     height: 100,
//             //     color: Colors.amber,
//             //   ),
//             // ),
//             // Align(
//             //   alignment: Alignment.center,
//             //   child: Container(
//             //     width: 100,
//             //     height: 100,
//             //     color: Colors.blue,
//             //   ),
//             // ),
//             // Align(
//             //   alignment: Alignment.centerRight,
//             //   child: Container(
//             //     width: 100,
//             //     height: 100,
//             //     color: Colors.green,
//             //   ),
//             // ),
//             // Align(
//             //   alignment: Alignment.bottomLeft,
//             //   child: Container(
//             //     width: 100,
//             //     height: 100,
//             //     color: Colors.amber,
//             //   ),
//             // ),
//             // Align(
//             //   alignment: Alignment.bottomCenter,
//             //   child: Container(
//             //     width: 100,
//             //     height: 100,
//             //     color: Colors.blue,
//             //   ),
//             // ),
//             // Align(
//             //   alignment: Alignment.bottomRight,
//             //   child: Container(
//             //     width: 100,
//             //     height: 100,
//             //     color: Colors.green,
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// AlertDialog - 팝업창 띄우기
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: Container(
//         child: Center(
//           child: TextButton(
//               onPressed: () {
//                 showDialog(
//                     context: context,
//                     builder: (BuildContext con) {
//                       return AlertDialog(
//                         title: const Text('Dialog Title'),
//                         content: SingleChildScrollView(
//                           child: Container(
//                             child: const Text('Dialog Content'),
//                           ),
//                         ),
//                         actions: [
//                           TextButton(
//                               onPressed: () => Navigator.of(context).pop(),
//                               child: const Text('Yes')),
//                           TextButton(
//                               onPressed: () => Navigator.of(context).pop(),
//                               child: const Text('Close'))
//                         ],
//                       );
//                     });
//               },
//               child: const Text('Button')),
//         ),
//       ),
//     );
//   }
// }

// 이미지 보여주기 - network image
// class _MyHomePageState extends State<MyHomePage> {
//   String url =
//       'https://cdn.pixabay.com/photo/2016/10/18/21/22/beach-1751455_960_720.jpg';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Title'),
//       ),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         // height: 500,
//         child: Image(
//           height: 400,
//           image: NetworkImage(url),
//           fit: BoxFit.fitHeight,
//         ),
//       ),
//     );
//   }
// }

// Flexible, Expanded 사용하여 반응형 만들기
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test App'),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Expanded(
//               // fit: FlexFit.tight 탑재
//               flex: 1,
//               child: Container(
//                 color: Colors.blue,
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               child: Container(
//                 color: Colors.green,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 그라데이션 적용하기
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
//         decoration: BoxDecoration(
//             gradient: RadialGradient(
//                 center: Alignment.center,
//                 colors: [
//                   Colors.amber[100] as Color,
//                   Colors.amber[300] as Color,
//                   Colors.amber[500] as Color,
//                 ],
//                 stops: const [0.1, 0.5, 1.0],
//                 radius: 1.0)
//             // gradient: LinearGradient(
//             //   colors: [
//             //     Colors.blue[100] as Color,
//             //     Colors.blue[300] as Color,
//             //     Colors.blue[500] as Color,
//             //   ],
//             //   begin: Alignment.topCenter,
//             //   end: Alignment.bottomCenter,
//             //   // stops: const [0.1, 0.4, 0.7],
//             // ),
//             ),
//       ),
//     );
//   }
// }

// 버튼 만들기
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test App'),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Center(
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.amber,
//                     textStyle: TextStyle(
//                       fontSize: 20,
//                     )),
//                 onPressed: () => print('Elevated Button'),
//                 child: const Text('Elevated Button'),
//               ),
//             ),
//             Center(
//               child: TextButton(
//                 onPressed: () => print('Text Button'),
//                 child: const Text('Text Button'),
//               ),
//             ),
//             Center(
//               child: OutlinedButton(
//                 onPressed: () => print('Outlined Button'),
//                 child: const Text('Outlined Button'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 페이지 이동 - Navigator 사용
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test App'),
//       ),
//       body: Center(
//         child: GestureDetector(
//             onTap: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) => const SecondView(),
//                 )),
//             child: Container(
//                 padding: const EdgeInsets.all(15),
//                 color: Colors.blue,
//                 child: const Text('Get Started'))),
//       ),
//     );
//   }
// }

// 유튜브 영상 삽입
// class _MyHomePageState extends State<MyHomePage> {
//   static String youtubeId = 'r5JZEjnySrU';

//   final YoutubePlayerController _con = YoutubePlayerController(
//     initialVideoId: youtubeId,
//     flags: const YoutubePlayerFlags(autoPlay: false),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test App'),
//       ),
//       body: Container(
//         child: YoutubePlayer(
//           controller: _con,
//         ),
//       ),
//     );
//   }
// }

// JSON 데이터 불러오기 - Future
// class _MyHomePageState extends State<MyHomePage> {
//   static Future loadJson() async {
//     final String response = await rootBundle.loadString('lib/users.json');
//     final data = await json.decode(response);
//     return data['users'];
//   }

//   Future userList = loadJson();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test App'),
//       ),
//       body: Container(
//         child: FutureBuilder(
//             future: userList,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       padding: const EdgeInsets.all(15),
//                       child: Text(
//                         '${snapshot.data[index]['id']}: ${snapshot.data[index]['username']}',
//                       ),
//                     );
//                   },
//                 );
//               } else if (snapshot.hasError) {
//                 return const Center(child: Text('Error'));
//               } else {
//                 return const Center(
//                   child: CircularProgressIndicator(
//                     strokeWidth: 2,
//                   ),
//                 );
//               }
//             }),
//       ),
//     );
//   }
// }

// 디스크에 간단한 데이터 저장 및 불러오기 - SharedPreferences  사용
// class _MyHomePageState extends State<MyHomePage> {
//   late SharedPreferences _prefs;
//   String _username = '';
//   final TextEditingController _usernameController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _getUsername();
//   }

//   _saveUsername() {
//     setState(() {
//       _username = _usernameController.text;
//       _prefs.setString('currentUsername', _username);
//     });
//   }

//   _getUsername() async {
//     _prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _username = _prefs.getString('currentUsername') ?? 'Not set';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test App'),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15),
//               child: Text('현재 사용자 이름: $_username'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(15),
//               child: TextField(
//                 controller: _usernameController,
//                 textAlign: TextAlign.left,
//                 decoration: const InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Input your username',
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: () => _saveUsername(),
//               child: const Text('저장'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
