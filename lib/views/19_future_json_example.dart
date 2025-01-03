import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class FutureJsonExamplePage extends StatefulWidget {
  const FutureJsonExamplePage({super.key});

  @override
  State<FutureJsonExamplePage> createState() => _FutureJsonExamplePageState();
}

class _FutureJsonExamplePageState extends State<FutureJsonExamplePage> {
  static Future<List<dynamic>> loadJson() async {
    final String response = await rootBundle.loadString('lib/users.json');
    final data = await json.decode(response);
    return data['users'];
  }

  late Future<List<dynamic>> userList;

  @override
  void initState() {
    super.initState();
    userList = loadJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future JSON Example'),
      ),
      body: FutureBuilder(
        future: userList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    '${users[index]['id']}: ${users[index]['username']}',
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error'));
          } else {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          }
        },
      ),
    );
  }
}
