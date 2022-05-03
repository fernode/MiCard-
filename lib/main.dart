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
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          _icon,
          color: Colors.blue[700],
        ),
        title: Text(_info),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[700],
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
                  color: Colors.blue.shade100,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade200,
                height: 1,
              ),
            ),
            InfoBox('11973645787', Icons.phone),
            InfoBox('fernando@teste.com.br', Icons.email)
          ],
        )),
      ),
    );
  }
}
