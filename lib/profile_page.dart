import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.videogame_asset),
            Text("사람들과의 보드게임 라이프를 시작해보세요."),
            OutlineButton(
              onPressed: () {
                // 회원가입, 로그인 추가
              },
              child: Text(
                "계정 추가하기",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
