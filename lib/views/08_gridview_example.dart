import 'package:flutter/material.dart';

class GridViewExamplePage extends StatefulWidget {
  const GridViewExamplePage({super.key});

  @override
  State<GridViewExamplePage> createState() => _GridViewExamplePageState();
}

class _GridViewExamplePageState extends State<GridViewExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
      ),
      body: GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0,
        ),
        children: [
          postContainer(number: '1', colorData: Colors.amber),
          postContainer(number: '2', colorData: Colors.greenAccent),
          postContainer(number: '3', colorData: Colors.blueAccent),
          postContainer(number: '4', colorData: Colors.redAccent),
          postContainer(number: '5', colorData: Colors.amber),
          postContainer(number: '6', colorData: Colors.greenAccent),
          postContainer(number: '7', colorData: Colors.blueAccent),
          postContainer(number: '8', colorData: Colors.redAccent),
          postContainer(number: '9', colorData: Colors.amber),
          postContainer(number: '10', colorData: Colors.greenAccent),
          postContainer(number: '11', colorData: Colors.blueAccent),
          postContainer(number: '12', colorData: Colors.redAccent),
        ],
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
