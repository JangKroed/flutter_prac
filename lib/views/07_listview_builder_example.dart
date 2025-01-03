import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  final postList = [
    {
      'title': 'Sample Title 1',
      'color': Colors.green,
    },
    {
      'title': 'Sample Title 2',
      'color': Colors.redAccent,
    },
    {
      'title': 'Sample Title 3',
      'color': Colors.amber,
    },
    {
      'title': 'Sample Title 4',
      'color': Colors.purpleAccent,
    },
    {
      'title': 'Sample Title 5',
      'color': Colors.teal,
    },
    {
      'title': 'Sample Title 6',
      'color': Colors.blueAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder'),
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index) {
          return postContainer(
            title: postList[index]['title'] as String,
            color: postList[index]['color'] as Color,
          );
        },
      ),
    );
  }

  Widget postContainer({String title = '', Color color = Colors.blue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: color,
        ),
      ],
    );
  }
}
