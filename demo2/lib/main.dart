import 'package:flutter/material.dart';

void main(){
  runApp(new rootApp());
}

class rootApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "随手帮",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: Center(
          child:Icon(Icons.account_balance),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.black12,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet,size: 30,color: Colors.amberAccent),
                title:Text("首页")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet,size: 30,color: Colors.amberAccent),
                title:Text("上传")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet,size: 30,color: Colors.amberAccent),
                title:Text("实践")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet,size: 30,color: Colors.amberAccent),
                title:Text("我的")
            ),
          ],
        ),
      ),
    );
  }
}

// class HomePage extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     return _HomePageState();
//   }
//
// }
//
// class _HomePageState extends State{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("动画按钮"),
//       ),
//       body: Stack(
//         children: [
//           buildRightFloatWidget()
//         ],
//       ),
//     );
//   }
//
// }

// class buildRightFloatWidget extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Icon(Icons.add_photo_alternate_rounded,size: 40,color: Colors.tealAccent),
//     );
//   }
//
// }