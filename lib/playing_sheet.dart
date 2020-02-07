import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class PlayingSheet {
  PlayingSheet();
  void playingModalBottomSheet(context) {
    double _silderValue = 17.0;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          ),
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.drag_handle,
                size: 20.0,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
                child: Image.asset('assets/teknoseyir.jpg'),
              ),
              Flexible(
                child: Marquee(
                  text: 'Haftalık Gündem Değerlendirmesi 2020/05',
                  blankSpace: 100.0,
                  style: TextStyle(fontSize: 18.0),
                  velocity: 30.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Text('Haftalık Gündem Değerlendirmesi'),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(
                        Icons.rotate_left,
                        size: 30.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Icon(
                        Icons.pause_circle_filled,
                        size: 50.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Icon(
                        Icons.rotate_right,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 0.0),
                      child: StatefulBuilder(
                        builder: (context, setState) => Slider(
                          value: _silderValue,
                          min: 0,
                          divisions: 100,
                          max: 100,
                          onChanged: (val) {
                            setState(() {
                              _silderValue = val;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      child: Text(
                        '17.04',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12.0,
                        ),
                      ),
                      top: 30.0,
                      left: 65.0,
                    ),
                    Positioned(
                      child: Text(
                        '-23.50',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 12.0,
                        ),
                      ),
                      top: 30.0,
                      right: 65.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('1.0x')),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Transform.rotate(
                        angle: 2.5,
                        child: Icon(
                          Icons.brightness_3,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.more_horiz,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
