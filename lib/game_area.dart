import 'package:flutter/material.dart';

class GameArea extends StatelessWidget {
  int numColumns = 10;

  Widget buildGameAreaSquare() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget buildGameBoard(BuildContext context, BoxConstraints constraints) {
    double width = constraints.maxWidth;
    double height = constraints.maxHeight;
    print(width);

    double boxWidth = width / numColumns;

    int numRows = (height / boxWidth).toInt();

    List<Widget> rowOfBoxes = [];
    for (int x = 0; x < numColumns; x++) {
      rowOfBoxes.add(buildGameAreaSquare());
    }

    List<Widget> columnsOfBoxes = [];
    for (int i = 0; i < numRows; i++) {
      columnsOfBoxes.add(
        Container(
          height: boxWidth,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: rowOfBoxes,
          ),
        ),
      );
    }

    columnsOfBoxes.add(
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: rowOfBoxes,
        ),
      ),
    );

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: columnsOfBoxes.reversed.toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: buildGameBoard,
    );
  }
}
