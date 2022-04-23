import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class InfoBox extends StatelessWidget {
  final String _info;
  final IconData _icon;
  InfoBox(this._info, this._icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            _icon,
            color: Colors.teal,
          ),
          SizedBox(
            width: 10,
          ),
          Text(_info)
        ],
      ),
    );
  }
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
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  color: Colors.teal.shade100,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
            ),
            InfoBox('11973645787', Icons.phone),
            InfoBox('fernando@teste.com.br', Icons.email)
          ],
        )),
      ),
    );
  }
}
