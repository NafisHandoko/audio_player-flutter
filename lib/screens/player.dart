import 'package:flutter/material.dart';
import 'package:audio_player/global_styles.dart';
// import 'package:audioplayers/audioplayers.dart';

class Player extends StatefulWidget {
  final isPlaying, player, cache, duration, position, play, pause;

  const Player(
      {Key? key,
      this.isPlaying,
      this.player,
      this.cache,
      this.duration,
      this.position,
      this.play,
      this.pause})
      : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // width: 278,
            height: 278,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [boxshadow1],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Batu_Malin_Kundang%2C_Air_Manis_Beach%2C_Padang_2017-02-14_02.jpg/1200px-Batu_Malin_Kundang%2C_Air_Manis_Beach%2C_Padang_2017-02-14_02.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: color2, boxShadow: [boxshadow2]),
            child: IconButton(
                iconSize: 45,
                onPressed: () {
                  if (widget.isPlaying) {
                    widget.pause();
                  } else {
                    widget.play();
                  }
                },
                icon: Icon(
                  widget.isPlaying
                      ? Icons.pause_rounded
                      : Icons.play_arrow_rounded,
                  color: Colors.white,
                )),
          ),
          Slider(
            min: 0,
            max: widget.duration.inSeconds.toDouble(),
            value: widget.position.inSeconds.toDouble(),
            onChanged: (value) {
              widget.player.seek(Duration(seconds: value.toInt()));
            },
          )
        ],
      ),
    );
  }
}
