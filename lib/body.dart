import 'package:flutter/material.dart';
import 'package:flutter_podcast/for_you.dart';

class Body extends StatefulWidget {
  final List<String> channels;
  Body({this.channels});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            child: GridView.count(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(4),
              crossAxisCount: 4,
              children: widget.channels
                  .map(
                    (channel) => Card(
                      child: Image.asset(
                        'assets/$channel',
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          ForYouPanel(),
        ],
      ),
    );
  }
}
