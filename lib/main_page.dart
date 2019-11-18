import 'package:flutter/material.dart';
import 'package:tetris/game_area.dart';
import 'package:tetris/side_area.dart';

class MainPage extends StatelessWidget {
  Widget _buildGameSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
            child: GameArea(),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            child: SideArea(),
          ),
        ),
      ],
    );
  }

  Widget _buildControlSection() {
    return Container(
      color: Colors.pink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.amberAccent,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: _buildGameSection(),
            ),
            Expanded(
              child: _buildControlSection(),
            )
          ],
        ),
      ),
    );
  }
}
