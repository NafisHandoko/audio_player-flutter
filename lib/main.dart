import 'package:audio_player/components/navbar.dart';
import 'package:audio_player/components/title_appbar.dart';
import 'package:audio_player/screens/player.dart';
import 'package:audio_player/screens/story.dart';
import 'package:flutter/material.dart';
import 'package:audio_player/global_styles.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isInPlayer = true;
  bool isPlaying = false;
  late AudioPlayer player;
  late AudioCache cache;
  Duration duration = Duration();
  Duration position = Duration();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    player = AudioPlayer();
    cache = AudioCache(fixedPlayer: player);
    cache.load('Rekaman.m4a');

    player.onAudioPositionChanged.listen((p) {
      setState(() {
        position = p;
      });
      player.onDurationChanged.listen((d) {
        setState(() {
          duration = d;
        });
      });
    });

    // _durationSubscription = player.onDurationChanged.listen((duration) {
    //   setState(() => _duration = duration);
    // });

    // _positionSubscription =
    //     player.onAudioPositionChanged.listen((p) => setState(() {
    //           _position = p;
    //         }));

    // _playerCompleteSubscription = player.onPlayerCompletion.listen((event) {
    //   player.stop();
    //   setState(() {
    //     isPlaying = false;
    //     _position = _duration;
    //   });
    // });
  }

  play() {
    setState(() {
      isPlaying = true;
    });
    cache.play('Rekaman.m4a');
  }

  pause() {
    setState(() {
      isPlaying = false;
    });
    player.pause();
  }

  stop() {
    setState(() {
      isPlaying = false;
    });
    player.stop();
    player.seek(Duration(seconds: 0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100), child: TitleAppBar()),
      body: isInPlayer
          ? Player(
              isPlaying: isPlaying,
              player: player,
              cache: cache,
              duration: duration,
              position: position,
              play: play,
              pause: pause,
              stop: stop,
            )
          : Story(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: color2, boxShadow: [boxshadow2]),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        // color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              alignment: Alignment.center,
              icon: const Icon(
                Icons.audiotrack,
              ),
              color: isInPlayer ? Colors.white : Colors.white.withOpacity(0.4),
              onPressed: () {
                setState(() {
                  isInPlayer = true;
                });
              },
            ),
            IconButton(
              alignment: Alignment.center,
              icon: const Icon(
                Icons.article,
              ),
              color: isInPlayer ? Colors.white.withOpacity(0.4) : Colors.white,
              onPressed: () {
                setState(() {
                  isInPlayer = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
