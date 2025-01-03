import 'package:flutter/material.dart';

class ListViewExamplePage extends StatefulWidget {
  const ListViewExamplePage({super.key});

  @override
  State<ListViewExamplePage> createState() => _ListViewExamplePageState();
}

class _ListViewExamplePageState extends State<ListViewExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          postContainer(title: 'Title 1', color: Colors.yellow),
          postContainer(title: 'Title 2', color: Colors.red),
          postContainer(title: 'Title 3', color: Colors.green),
          postContainer(title: 'Title 4', color: Colors.amber),
          postContainer(title: 'Title 5', color: Colors.indigo),
        ],
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
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: color,
        ),
      ],
    );
  }
}
