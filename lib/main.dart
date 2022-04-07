import 'package:audio_player/components/navbar.dart';
import 'package:audio_player/components/title_appbar.dart';
import 'package:audio_player/screens/player.dart';
import 'package:audio_player/screens/story.dart';
import 'package:flutter/material.dart';
import 'package:audio_player/global_styles.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100), child: TitleAppBar()),
      body: isInPlayer ? Player() : Story(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: color2, boxShadow: [boxshadow1]),
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
