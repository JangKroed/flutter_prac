import 'package:flutter/material.dart';

class HelloWorldDrawerPage extends StatefulWidget {
  const HelloWorldDrawerPage({super.key});

  @override
  State<HelloWorldDrawerPage> createState() => _HelloWorldDrawerPageState();
}

class _HelloWorldDrawerPageState extends State<HelloWorldDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header Part'),
            ),
            ListTile(
              title: Text('Menu 1'),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('HELLO WORLD'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('clicked'),
        child: const Icon(Icons.mouse),
      ),
    );
  }
}
