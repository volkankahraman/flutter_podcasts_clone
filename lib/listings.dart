import 'package:flutter/material.dart';
import 'package:flutter_podcast/gridtile.dart';

class Listings extends StatefulWidget {
  @override
  _ListingsState createState() => _ListingsState();
}

class _ListingsState extends State<Listings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Popular podcasts on technology category",
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          SizedBox(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                gridTile(
                  image: 'assets/mesutcevik.jpg',
                  title: "Mesut Çevik ile Podcast",
                  subtitle: "Mesut Çevik",
                ),
                gridTile(
                    image: 'assets/teknolojivebilimnotlari.jpg',
                    title: "Teknoloji ve Bilim Notları",
                    subtitle: "Teknoseyir"),
                gridTile(
                  image: 'assets/studio71.jpg',
                  title: "Waveform: The MKBHD Podcast",
                  subtitle: "Studio71",
                ),
                gridTile(
                    image: 'assets/teknoseyir.jpg',
                    title: "Haftalık Gündem Değerlendirmesi",
                    subtitle: "Teknoseyir"),
                gridTile(
                  image: 'assets/mesutcevik.jpg',
                  title: "Mesut Çevik ile Podcast",
                  subtitle: "Mesut Çevik",
                ),
                gridTile(
                    image: 'assets/teknolojivebilimnotlari.jpg',
                    title: "Teknoloji ve Bilim Notları",
                    subtitle: "Teknoseyir"),
                gridTile(
                  image: 'assets/studio71.jpg',
                  title: "Waveform: The MKBHD Podcast",
                  subtitle: "Studio71",
                ),
                gridTile(
                    image: 'assets/teknoseyir.jpg',
                    title: "Haftalık Gündem Değerlendirmesi",
                    subtitle: "Teknoseyir"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
