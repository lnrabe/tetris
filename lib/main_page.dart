import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  Widget _buildGameSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            width: 20,
            color: Colors.green,
          ),
        ),
        Expanded(
          child: Container(
            width: 10,
            color: Colors.red,
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
    return Column(
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
    );
  }
}
