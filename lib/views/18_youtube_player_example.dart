import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerExamplePage extends StatefulWidget {
  const YoutubePlayerExamplePage({super.key});

  @override
  State<YoutubePlayerExamplePage> createState() =>
      _YoutubePlayerExamplePageState();
}

class _YoutubePlayerExamplePageState extends State<YoutubePlayerExamplePage> {
  static const String youtubeId = 'r5JZEjnySrU';

  final YoutubePlayerController _con = YoutubePlayerController(
    initialVideoId: youtubeId,
    flags: const YoutubePlayerFlags(autoPlay: false),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Youtube Player Example'),
      ),
      body: YoutubePlayer(
        controller: _con,
      ),
    );
  }
}
