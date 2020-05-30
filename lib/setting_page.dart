import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("테마 설정"),
          GestureDetector(
              onTap: () {
                showAboutDialog(context: context);
              },
              child: Text("앱 정보")),
        ],
      ),
    );
  }
}
