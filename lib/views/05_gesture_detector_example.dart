import 'package:flutter/material.dart';

class GestureDetectorExamplePage extends StatefulWidget {
  const GestureDetectorExamplePage({super.key});

  @override
  State<GestureDetectorExamplePage> createState() =>
      _GestureDetectorExamplePageState();
}

class _GestureDetectorExamplePageState
    extends State<GestureDetectorExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Detector Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => print("GestureDetector used."),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
