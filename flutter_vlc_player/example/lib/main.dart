import 'package:flutter/material.dart';
import 'package:flutter_vlc_player_example/multiple_tab.dart';
import 'package:flutter_vlc_player_example/single_tab.dart';

void main() {
  runApp(
    MaterialApp(
      home: App(),
    ),
  );
}

// ignore: prefer-match-file-name
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  static const _length = 2;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Vlc Player Example'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Single'),
              Tab(text: 'Multiple'),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SingleTab(),
            MultipleTab(),
          ],
        ),
      ),
    );
  }
}
