import 'package:flutter/material.dart';

void main() {
  const appTitle = Text('Flutter button');

  final ButtonStyle textButtonStyle = TextButton.styleFrom(
    foregroundColor: Colors.blue,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
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
    child: OutlinedButton(
      style: outlinedButtonStyle,
      onPressed: (){},
      child: Text('OutlinedButton')
    ),
    // child: Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: <Widget>[
    //     OutlinedButton(
    //         style: outlinedButtonStyle,
    //         onPressed: (){},
    //         child: Text('OutlinedButton')
    //     ),
    //     ElevatedButton(
    //         style: elevatedButtonStyle,
    //         onPressed: (){},
    //         child: Text('ElevatedButton')
    //     ),
    //     TextButton(
    //         style: textButtonStyle,
    //         onPressed: (){},
    //         child: Text('TextButton')
    //     )
    //   ],
    // ),
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
