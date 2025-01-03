import 'package:flutter/material.dart';

class GridViewBuilderPage extends StatefulWidget {
  const GridViewBuilderPage({super.key});

  @override
  State<GridViewBuilderPage> createState() => _GridViewBuilderPageState();
}

class _GridViewBuilderPageState extends State<GridViewBuilderPage> {
  final postList = [
    {
      'number': '1',
      'color': Colors.blueAccent,
    },
    {
      'number': '2',
      'color': Colors.lightGreen,
    },
    {
      'number': '3',
      'color': Colors.blueGrey,
    },
    {
      'number': '4',
      'color': Colors.orangeAccent,
    },
    {
      'number': '5',
      'color': Colors.deepPurple,
    },
    {
      'number': '6',
      'color': Colors.yellow,
    },
    {
      'number': '7',
      'color': Colors.lightBlue,
    },
    {
      'number': '8',
      'color': Colors.redAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.builder Example'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0,
        ),
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index) {
          return postContainer(
            number: postList[index]['number'] as String,
            colorData: postList[index]['color'] as Color,
          );
        },
      ),
    );
  }

  Widget postContainer({String number = '0', Color colorData = Colors.amber}) {
    return Container(
      height: 200,
      color: colorData,
      child: Center(child: Text('Box $number')),
    );
  }
}
