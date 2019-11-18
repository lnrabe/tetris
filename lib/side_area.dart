import 'package:flutter/material.dart';
import 'package:tetris/piece.dart';

class SideArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Piece piece = secondPiece;
    List<Widget> rows = [];
    for (var x = 0; x < piece.layout.length; x++) {
      List<Widget> boxes = [];
      for (var i = 0; i < piece.layout[x].length; i++) {
        bool isFilledIn = piece.layout[x][i] == 1;
        boxes.add(Container(
          height: 20,
          width: 20,
          color: isFilledIn ? Colors.indigoAccent : Colors.transparent,
        ));
      }
      rows.add(Row(mainAxisSize: MainAxisSize.min, children: boxes));
    }
    return Container(
        alignment: Alignment.center,
        child: Column(mainAxisSize: MainAxisSize.min, children: rows));
  }
}
