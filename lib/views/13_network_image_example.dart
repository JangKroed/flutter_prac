import 'package:flutter/material.dart';

class NetworkImageExamplePage extends StatefulWidget {
  const NetworkImageExamplePage({super.key});

  @override
  State<NetworkImageExamplePage> createState() =>
      _NetworkImageExamplePageState();
}

class _NetworkImageExamplePageState extends State<NetworkImageExamplePage> {
  String url =
      'https://cdn.pixabay.com/photo/2016/10/18/21/22/beach-1751455_960_720.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Image Example'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Image(
          height: 400,
          image: NetworkImage(url),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
