import 'package:flutter/material.dart';

class AlertDialogExamplePage extends StatefulWidget {
  const AlertDialogExamplePage({super.key});

  @override
  State<AlertDialogExamplePage> createState() => _AlertDialogExamplePageState();
}

class _AlertDialogExamplePageState extends State<AlertDialogExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog Example'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext con) {
                return AlertDialog(
                  title: const Text('Dialog Title'),
                  content: const SingleChildScrollView(
                    child: Text('Dialog Content'),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Yes'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Button'),
        ),
      ),
    );
  }
}
