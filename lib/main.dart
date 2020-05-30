import 'package:boardgamers/community_page.dart';
import 'package:boardgamers/game_tools_page.dart';
import 'package:boardgamers/groups_page.dart';
import 'package:boardgamers/profile_page.dart';
import 'package:boardgamers/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BoardGamersApp());
}

class BoardGamersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BoadGamers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InitialPage(),
    );
  }
}

class InitialPage extends StatefulWidget {
  InitialPage({Key key}) : super(key: key);

  final String title = "BoardGamers";

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: selectedIndex,
              labelType: NavigationRailLabelType.selected,
              onDestinationSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              destinations: [
                NavigationRailDestination(
                    icon: Icon(
                      Icons.group_work,
                    ),
                    label: Text("커뮤니티")),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.group,
                  ),
                  label: Text("내 모임"),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.card_travel,
                  ),
                  label: Text("게임 도구"),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.person_pin,
                  ),
                  label: Text("프로필"),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: Text("설정"),
                ),
              ],
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  switch (selectedIndex) {
                    case 0:
                      return CommunityPage();
                    case 1:
                      return GroupsPage();
                    case 2:
                      return GameToolsPage();
                    case 3:
                      return ProfilePage();
                    case 4:
                      return SettingPage();
                    default:
                      return Container();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
