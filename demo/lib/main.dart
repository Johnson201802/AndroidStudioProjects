import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(new MyApp2());
}

class MyApp2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
                                                                                                    
}

class _MyHomePageState extends State{
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    TargetPlatform platform = defaultTargetPlatform;
    if (platform != TargetPlatform.iOS) {
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }

    return MaterialApp(
      title: "卧槽",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("卧槽，Flutter!"),
        ),
        body: Center(
          child: Text("啦啦啦"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black26,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              this.currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"首页",),
            BottomNavigationBarItem(icon: Icon(Icons.crop_square_rounded),label:"圈子"),
            BottomNavigationBarItem(icon: Icon(Icons.message_rounded),label:"消息"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:"我的"),
          ],
        ),
      ),
    );
  }

}

class Myapp extends StatelessWidget{
  var currentIndex = 0;
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
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("我勒个擦"),
        ),
        body: TestImage(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black26,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index){
            this.currentIndex = index;
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"首页",),
            BottomNavigationBarItem(icon: Icon(Icons.crop_square_rounded),label:"圈子"),
            BottomNavigationBarItem(icon: Icon(Icons.message_rounded),label:"消息"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:"我的"),
          ],
        ),
      ),
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
    );
  }
}

class Index3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("卧槽，Flutter!",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 30,
              color: Colors.black,
          ),
        ),
        height: 500.0,
        width: 1000000,
      )
    );
  }

}

class TestImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(10,10,10,10),
      children: [
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
        ListTile(
          leading: Image.network("https://news.online.sh.cn/news/gb/content/attachement/jpg/site1/20201220/IMGf48e3894467155843854255.jpg"),
          title: Text("陕西发现战国时期秦国后宫遗址"),
          subtitle: Text("陕视新闻记者从从中国社会科学院考古研究所了解到，西安阎良秦汉栎阳城考古又有新发现"),
        ),
      ],
    );
  }

}

class testGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var datas = [];
    for (var i=0;i<100;i++){
      datas.add("$i");
    }
    return GridView.builder(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        itemCount: datas.length,
        //SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //横轴元素个数
            crossAxisCount: 3,
            //纵轴间距
            mainAxisSpacing: 20.0,
            //横轴间距
            crossAxisSpacing: 10.0,
            //子组件宽高长度比例
            childAspectRatio: 1.0),
            itemBuilder: (BuildContext context, int index) {
          //Widget Function(BuildContext context, int index)
          return getItemContainer(datas[index]);
        });
  }

  Widget getItemContainer(String item) {
    return Container(
      width: 5.0,
      height: 5.0,
      alignment: Alignment.center,
      child: Text(
        item,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.blue,
    );
  }

}

class Test2 extends StatefulWidget{
  @override
  _Test2State createState(){
    return _Test2State();
  }


}

class _Test2State extends State{
  int _favoriteCount = 55;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(children:[
      Text("hello，flutter！{$_favoriteCount}"),
      Icon(Icons.add_a_photo,size: 30,color: Colors.blue),
      RaisedButton(
          child: Text("点我"),
          onPressed: (){
            setState(() {
              this._favoriteCount++;
              print(this._favoriteCount++);
            });
          })
    ]
 );
}

}