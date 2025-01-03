import 'package:flutter/material.dart';

class AlienLayoutPage extends StatefulWidget {
  const AlienLayoutPage({super.key});

  @override
  State<AlienLayoutPage> createState() => _AlienLayoutPageState();
}

class _AlienLayoutPageState extends State<AlienLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alien Layout Example'),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black26,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.brown,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 40, bottom: 150),
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(bottom: 200),
              width: 200,
              height: 70,
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
    );
  }
}
