import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TargetPlatform platform = defaultTargetPlatform;
    if (platform != TargetPlatform.iOS) {
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }

    return MaterialApp(
      title: 'Welcome to Flutter111',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter2222'),
        ),
        body: Center(
          child: Text('Hello World35454545',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 20.0,
            color: Color.fromRGBO(222, 222, 222, 0.8),
          ),
          ),
        ),
      ),
    );
  }
}

class myWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

  }

}

