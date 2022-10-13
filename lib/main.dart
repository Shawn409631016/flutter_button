import 'package:flutter/material.dart';

void main() {
  const appTitle = Text('Flutter button');

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    foregroundColor: Colors.blue,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
    foregroundColor: Colors.blue,
    minimumSize: const Size(88, 36),
    side: const BorderSide(
      color: Colors.blue,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
  var appBody = Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlinedButton(
            style: outlineButtonStyle,
            onPressed: (){},
            child: Text('OutlinedButton')
        ),
        ElevatedButton(
            style: raisedButtonStyle,
            onPressed: (){},
            child: Text('RaisedButton')
        ),
        TextButton(
            style: flatButtonStyle,
            onPressed: (){},
            child: Text('FlatButton')
        )
      ],
    ),
  );

  var appBar = AppBar(
    title: appTitle,
    backgroundColor: Colors.lightBlue[400],
  );

  var app = MaterialApp(
    home: Scaffold(
      appBar: appBar,
      body: appBody,
      backgroundColor: Color(0xFFFFFFFF),
    ),
  );


  runApp(app);
}
