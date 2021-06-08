import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<Splash>{
  Timer _timer;
  int time = 5;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      if(time > 1){
        setState(() {
          time--;
        });
      }else{
        goHome();
        _timer.cancel();
      }
    });
  }

  void goHome(){
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/splash.png"), fit: BoxFit.cover), ),
      child: Stack(
        children: [
          Positioned(
            top: 40,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(top: 5,bottom: 5,left: 15, right: 15),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.2),
                borderRadius: BorderRadius.all(Radius.circular(60)),
              ),
              child: GestureDetector(
                onTap: goHome,
                child: Text("$time跳过", style: TextStyle(color: Colors.white, fontSize: 12,decoration: TextDecoration.none, fontWeight: FontWeight.normal), overflow: TextOverflow.ellipsis,),
              )
            ),
          ),
        ],
      )
    );
  }

}