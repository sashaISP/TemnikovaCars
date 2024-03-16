import 'package:flutter/material.dart';
import 'package:temnikova_cars/model/cars.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeMediaPlayer extends StatelessWidget {
  final int id;
  const YoutubeMediaPlayer({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _controller = YoutubePlayerController();
    _controller.loadVideoById(videoId: YoutubePlayerController.convertUrlToId(carsList[id].linkVideo).toString());
    return YoutubePlayer(
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}
