import 'package:flutter/material.dart';

class GameToolsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "게임에 필요한 도구가 한자리에.",
            style: Theme.of(context).textTheme.headline4,
          ),
          Card(
            child: Text('주사위'),
          ),
          Card(
            child: Text('타이머'),
          ),
          Card(
            child: Text('선잡기'),
          ),
          Card(
            child: Text('역할 분배'),
          ),
        ],
      ),
    );
  }
}
