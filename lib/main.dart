import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/perfil.jpg'),
              ),
            ),
            Text(
              'Fernando Silva',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Pacifico', fontSize: 18),
            )
          ],
        )),
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  Color _color;
  TextSection(Color color) {
    this._color = color;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: this._color,
      child: Text('Text some widget'),
    );
  }
}
