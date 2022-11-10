import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter button'),
        ),
        body: Body(),
      ),
    );
  }



}

class Body extends StatelessWidget{

  final elevatedButtonStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
  );
  final outlinedButtonStyle = OutlinedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
  );
  final textButtonStyle = TextButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
  );


  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: _elevatedButton(context),
          ),
          Container(
            child: _outlinedButton(context),
          ),
          Container(
            child: _textButton(context),
          )
        ],
      ),
    );
  }

  ElevatedButton _elevatedButton(BuildContext context){
    return ElevatedButton(
        child: Text('ElevatedButton'),
        onPressed: (){
         showSnackbar(context);
        }
    );
  }
  OutlinedButton _outlinedButton(BuildContext context){
    return OutlinedButton(
        child: Text('outlinedButton'),
        onPressed: (){
          showSnackbar(context);
        }
    );
  }
  TextButton _textButton(BuildContext context){
    return TextButton(
        child: Text('TextButton'),
        onPressed: (){
          showSnackbar(context);
        }
    );
  }

  void showSnackbar(BuildContext context){
    final snackBar = SnackBar(
      content: Text('Hi, I am SnackBar'),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.blueGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      action: SnackBarAction(
        label: "Toast訊息",
        textColor: Colors.white,
        onPressed: ()=> Fluttertoast.showToast(
            msg: '你按下SnackBar',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.blueGrey,
            textColor: Colors.white,
            fontSize: 20
        ),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}