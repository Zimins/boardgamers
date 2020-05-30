import 'package:flutter/material.dart';

class GroupsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("등록된 그룹이 없습니다."),
            OutlineButton(
              child: Text(
                "내 주변 그룹 찾아보기",
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
