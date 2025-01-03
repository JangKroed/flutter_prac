import 'package:flutter/material.dart';

class StackExamplePage extends StatefulWidget {
  const StackExamplePage({super.key});

  @override
  State<StackExamplePage> createState() => _StackExamplePageState();
}

class _StackExamplePageState extends State<StackExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.yellow,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 50, left: 50),
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 100, left: 100),
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 150, left: 150),
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
