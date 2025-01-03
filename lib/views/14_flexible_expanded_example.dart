import 'package:flutter/material.dart';

class FlexibleExpandedExamplePage extends StatefulWidget {
  const FlexibleExpandedExamplePage({super.key});

  @override
  State<FlexibleExpandedExamplePage> createState() =>
      _FlexibleExpandedExamplePageState();
}

class _FlexibleExpandedExamplePageState
    extends State<FlexibleExpandedExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible & Expanded'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
