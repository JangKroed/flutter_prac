import 'package:flutter/material.dart';

class ColumnRowTablePage extends StatefulWidget {
  const ColumnRowTablePage({super.key});

  @override
  State<ColumnRowTablePage> createState() => _ColumnRowTablePageState();
}

class _ColumnRowTablePageState extends State<ColumnRowTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column & Row Layout'),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
