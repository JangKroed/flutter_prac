import 'package:flutter/material.dart';
import 'package:flutter_practice_project/provider/album_provider.dart';
import 'package:flutter_practice_project/view/album_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider<AlbumProvider>(
      create: (context) => AlbumProvider(),
      child: const AlbumView(),
    )
        // title: 'Flutter Demo',
        // theme: ThemeData(primarySwatch: Colors.blue),
        // home: const MyHomePage(),
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Container(),
    );
  }
}
