import 'package:flutter/material.dart';

class ForYouPanel extends StatefulWidget {
  @override
  _ForYouPanelState createState() => _ForYouPanelState();
}

class _ForYouPanelState extends State<ForYouPanel>
    with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 20.0, 0, 0),
                child: Text(
                  'For You',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Container(
              child: TabBar(
                isScrollable: true,
                controller: _controller,
                tabs: [
                  Tab(
                    text: 'New Episodes',
                  ),
                  Tab(
                    text: 'In progress',
                  ),
                  Tab(
                    text: 'Downloads',
                  ),
                  Tab(
                    text: 'Suggested',
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              height: 275.0,
              child: TabBarView(
                controller: _controller,
                physics: ScrollPhysics(),
                children: <Widget>[
                  Card(
                    elevation: 0,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Image.asset(
                                'assets/unsalunlu.jpg',
                              ),
                            ),
                          ),
                          title: Text('6 Şubat 2020,gazetelerin yazd...'),
                          subtitle: Text('15 hours ago • 34 minutes'),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_circle_outline,
                              color: Colors.blueAccent,
                            ),
                          ),
                          onTap: () {},
                        ),
                        Divider(height: 0),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Image.asset(
                                'assets/teknolojivebilimnotlari.jpg',
                              ),
                            ),
                          ),
                          title: Text('Teknoloji ve Bilim Notları 2020/5'),
                          subtitle: Text('15 hours ago • 34 minutes'),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_circle_outline,
                              color: Colors.blueAccent,
                            ),
                          ),
                          onTap: () {},
                        ),
                        Divider(height: 0),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Image.asset(
                                'assets/yalinkod.jpg',
                              ),
                            ),
                          ),
                          title: Text('YKP 040: Bir motivasyon Hilesi'),
                          subtitle: Text('4 days ago • 7 minutes'),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_circle_outline,
                              color: Colors.blueAccent,
                            ),
                          ),
                          onTap: () {},
                        ),
                        Divider(
                          height: 0,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.arrow_forward,
                            color: Colors.blueAccent,
                          ),
                          title: Text(
                            'All new Episodes',
                            style: TextStyle(
                                color: Colors.blueAccent, letterSpacing: 0),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "There is no episode in progress",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "There is no downloaded episode",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "There is no suggested episode",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
