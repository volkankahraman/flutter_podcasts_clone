import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_podcast/playing_sheet.dart';
import 'package:marquee/marquee.dart';

class BottomBar extends StatefulWidget {
  static AudioCache player = AudioCache();

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // add it to your class as a static member
  // or as a local variable
  final player = AudioCache();
  bool playing = false;
  IconData _playButton = Icons.play_arrow;

  @override
  void initState() {
    player.load('2020_01_gundem.mp3');
    super.initState();
  }

  AudioPlayer audioPlayer;

  void _playPause() {
    if (playing) {
      _stop();
    } else {
      _play();
    }
  }

  // call this method when desired
  void _play() async {
    setState(() {
      playing = !playing;
    });
    _playButton = Icons.pause;
    if (audioPlayer != null)
      audioPlayer.resume();
    else
      audioPlayer = await player.play('2020_01_gundem.mp3');
  }

  void _stop() async {
    setState(() {
      playing = !playing;
    });
    _playButton = Icons.play_arrow;
    if (audioPlayer != null)
      audioPlayer.pause();
    else
      await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PlayingSheet().playingModalBottomSheet(context);
      },
      onPanUpdate: (details) {
        if (details.delta.dy < 0) {
          PlayingSheet().playingModalBottomSheet(context);
        }
      },
      child: SizedBox(
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(4.0, 4.0, 12.0, 4.0),
              child: Image.asset(
                'assets/teknoseyir.jpg',
                height: 40.0,
              ),
            ),
            Expanded(
              child: Marquee(
                text: 'Haftalık Gündem Değerlendirmesi 2020/05',
                blankSpace: 80.0,
                velocity: 30.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 7.0,
                vertical: 7.0,
              ),
              child: IconButton(
                icon: Icon(_playButton),
                onPressed: () {
                  _playPause();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
