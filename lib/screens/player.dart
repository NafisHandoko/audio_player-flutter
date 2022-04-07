import 'package:flutter/material.dart';
import 'package:audio_player/global_styles.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  double sliderValue = 0;
  bool isPlaying = false;
  AudioPlayer player = new AudioPlayer();
  late AudioCache cache;
  // late Duration _duration;
  // late Duration _position;
  Duration _duration = new Duration();
  Duration _position = new Duration();

  late StreamSubscription _durationSubscription;
  late StreamSubscription _positionSubscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlayer();
  }

  void initPlayer() async {
    cache = AudioCache(fixedPlayer: player);

    _durationSubscription = player.onDurationChanged.listen((duration) {
      setState(() => _duration = duration);
    });

    _positionSubscription =
        player.onAudioPositionChanged.listen((p) => setState(() {
              _position = p;
            }));
  }

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
                        'https://images.unsplash.com/photo-1501472312651-726afe119ff1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80'),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: color2, boxShadow: [boxshadow1]),
            child: IconButton(
                iconSize: 45,
                onPressed: () async {
                  if (isPlaying) {
                    setState(() {
                      isPlaying = false;
                    });
                    player.pause();
                  } else {
                    setState(() {
                      isPlaying = true;
                    });
                    cache.play('tes.mp3');
                  }
                },
                icon: Icon(
                  isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                  color: Colors.white,
                )),
          ),
          Slider(
            min: 0,
            max: _duration.inSeconds.toDouble(),
            value: _position.inSeconds.toDouble(),
            onChanged: (value) {
              player.seek(Duration(milliseconds: value.toInt()));
            },
          )
        ],
      ),
    );
  }
}
