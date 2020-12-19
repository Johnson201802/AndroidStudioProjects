import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(new Myapp());
}

class Myapp extends StatelessWidget{
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
      title: "卧槽，world！",
      home:Scaffold(
        appBar: AppBar(
          title: Text("我勒个擦"),
        ),
        body: Index3()
      ),
        theme: ThemeData(
          primarySwatch: Colors.yellow
        )
    );
  }
}

class Index3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("卧槽，Flutter!",
          style: TextStyle(
              fontSize: 30,
              color: Colors.black
          ),
        ),
        // height: 500.0,
      )
    );
  }

}