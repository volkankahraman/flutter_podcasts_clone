import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_podcast/bottom_bar.dart';
import 'package:flutter_podcast/body.dart';

import 'bottom_bar.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white, // status bar color
  ));
}

List<String> channels = [
  'teknoseyir.jpg',
  'acikbilim.jpg',
  'dnomak.jpg',
  'yalinkod.jpg',
  'unsalunlu.jpg',
  'teknolojivebilimnotlari.jpg',
  'oyungundemi.jpg',
  'mesutcevik.jpg',
  'gelecekbilimde.jpg',
];

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _searchbar = false;
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    channels.shuffle();
    super.initState();
  }

  void _searchClicked() {
    setState(() {
      _searchbar = !_searchbar;
    });
  }

  Future<bool> _onBackPressed() {
    setState(() {
      _searchbar = false;
    });
    Navigator.pop(context, false);
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Podcasts',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey,
      ),
      home: WillPopScope(
        onWillPop: () async {
          if (_searchbar)
            return _onBackPressed();
          else
            return true;
        },
        child: Scaffold(
          appBar: _searchbar
              ? AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  leading: IconButton(
                    onPressed: _searchClicked,
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey[600],
                    ),
                  ),
                  title: TextField(
                    autofocus: true,
                    decoration: new InputDecoration(
                      hintText: 'Search podcast ',
                      border: InputBorder.none,
                    ),
                  ))
              : AppBar(
                  backgroundColor: Colors.white,
                  centerTitle: true,
                  elevation: 0,
                  leading: IconButton(
                    onPressed: _searchClicked,
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[400],
                        backgroundImage: AssetImage('assets/photo.jpg'),
                        radius: 17.5,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                  title: Image.asset(
                    'assets/logo.png',
                    height: 35.0,
                  ),
                ),
          body: _searchbar ? Center() : Body(channels: channels),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
