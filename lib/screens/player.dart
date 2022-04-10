import 'package:flutter/material.dart';
import 'package:audio_player/global_styles.dart';

class Player extends StatefulWidget {
  final isPlaying,
      player,
      cache,
      duration,
      position,
      play,
      pause,
      stop,
      setPlaybackRate,
      playbackRate;

  const Player(
      {Key? key,
      this.isPlaying,
      this.player,
      this.cache,
      this.duration,
      this.position,
      this.play,
      this.pause,
      this.stop,
      this.setPlaybackRate,
      this.playbackRate})
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color2,
                    boxShadow: [boxshadow2]),
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
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorStop,
                    boxShadow: [boxshadow2]),
                child: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      widget.stop();
                    },
                    icon: Icon(
                      Icons.stop_rounded,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  widget.player.setPlaybackRate(0.5);
                  setState(() {
                    widget.setPlaybackRate(0.5);
                  });
                },
                child: Container(
                  width: 50,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (widget.playbackRate == 0.5) ? Colors.white : color1,
                    border: Border.all(
                        color: (widget.playbackRate == 0.5)
                            ? Colors.white
                            : color2,
                        width: 2),
                    borderRadius: borderRadius1,
                  ),
                  child: Text(
                    '0.5x',
                    style: TextStyle(
                        color: color2,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  widget.player.setPlaybackRate(1.0);
                  setState(() {
                    widget.setPlaybackRate(1.0);
                  });
                },
                child: Container(
                  width: 50,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (widget.playbackRate == 1.0) ? Colors.white : color1,
                    border: Border.all(
                        color: (widget.playbackRate == 1.0)
                            ? Colors.white
                            : color2,
                        width: 2),
                    borderRadius: borderRadius1,
                  ),
                  child: Text(
                    '1x',
                    style: TextStyle(
                        color: color2,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  widget.player.setPlaybackRate(2.0);
                  setState(() {
                    widget.setPlaybackRate(2.0);
                  });
                },
                child: Container(
                  width: 50,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (widget.playbackRate == 2.0) ? Colors.white : color1,
                    border: Border.all(
                        color: (widget.playbackRate == 2.0)
                            ? Colors.white
                            : color2,
                        width: 2),
                    borderRadius: borderRadius1,
                  ),
                  child: Text(
                    '2x',
                    style: TextStyle(
                        color: color2,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  widget.player.setPlaybackRate(3.0);
                  setState(() {
                    widget.setPlaybackRate(3.0);
                  });
                },
                child: Container(
                  width: 50,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (widget.playbackRate == 3.0) ? Colors.white : color1,
                    border: Border.all(
                        color: (widget.playbackRate == 3.0)
                            ? Colors.white
                            : color2,
                        width: 2),
                    borderRadius: borderRadius1,
                  ),
                  child: Text(
                    '3x',
                    style: TextStyle(
                        color: color2,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  widget.player.setPlaybackRate(4.0);
                  setState(() {
                    widget.setPlaybackRate(4.0);
                  });
                },
                child: Container(
                  width: 50,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (widget.playbackRate == 4.0) ? Colors.white : color1,
                    border: Border.all(
                        color: (widget.playbackRate == 4.0)
                            ? Colors.white
                            : color2,
                        width: 2),
                    borderRadius: borderRadius1,
                  ),
                  child: Text(
                    '4x',
                    style: TextStyle(
                        color: color2,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
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
