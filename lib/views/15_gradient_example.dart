import 'package:flutter/material.dart';

class GradientExamplePage extends StatefulWidget {
  const GradientExamplePage({super.key});

  @override
  State<GradientExamplePage> createState() => _GradientExamplePageState();
}

class _GradientExamplePageState extends State<GradientExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gradient Example'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            colors: [
              Colors.amber[100] as Color,
              Colors.amber[300] as Color,
              Colors.amber[500] as Color,
            ],
            stops: const [0.1, 0.5, 1.0],
            radius: 1.0,
          ),
          // 또는 LinearGradient 예시
          // gradient: LinearGradient(
          //   colors: [
          //     Colors.blue[100] as Color,
          //     Colors.blue[300] as Color,
          //     Colors.blue[500] as Color,
          //   ],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
        ),
      ),
    );
  }
}
