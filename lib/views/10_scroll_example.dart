import 'package:flutter/material.dart';

class ScrollExamplePage extends StatefulWidget {
  const ScrollExamplePage({super.key});

  @override
  State<ScrollExamplePage> createState() => _ScrollExamplePageState();
}

class _ScrollExamplePageState extends State<ScrollExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.blue,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.red,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.green,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
