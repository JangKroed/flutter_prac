import 'package:flutter/material.dart';

class NavigatorExamplePage extends StatefulWidget {
  const NavigatorExamplePage({super.key});

  @override
  State<NavigatorExamplePage> createState() => _NavigatorExamplePageState();
}

class _NavigatorExamplePageState extends State<NavigatorExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SecondView()),
          ),
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.blue,
            child: const Text('Go to Second View'),
          ),
        ),
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second View'),
      ),
      body: const Center(
        child: Text('This is second page.'),
      ),
    );
  }
}
