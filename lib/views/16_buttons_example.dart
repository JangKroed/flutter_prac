import 'package:flutter/material.dart';

class ButtonsExamplePage extends StatefulWidget {
  const ButtonsExamplePage({super.key});

  @override
  State<ButtonsExamplePage> createState() => _ButtonsExamplePageState();
}

class _ButtonsExamplePageState extends State<ButtonsExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Example'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () => print('Elevated Button'),
              child: const Text('Elevated Button'),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () => print('Text Button'),
              child: const Text('Text Button'),
            ),
          ),
          Center(
            child: OutlinedButton(
              onPressed: () => print('Outlined Button'),
              child: const Text('Outlined Button'),
            ),
          ),
        ],
      ),
    );
  }
}
