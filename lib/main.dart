import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
  const Body({Key? key}) : super(key: key);

  void showSnackbar(BuildContext context){
    final snackBar = SnackBar(
      content: Text('Hi, I am SnackBar'),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      action: SnackBarAction(
        label: "Toast訊息",
        textColor: Colors.white,
        onPressed: ()=> Fluttertoast.showToast(
          msg: '你按下SnackBar',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          fontSize: 20
        ),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context){
    return Center(
      child: MaterialButton(
        child: Text('Show SnackBar'),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: (){
          showSnackbar(context);
        },
      ),
    );
  }
}