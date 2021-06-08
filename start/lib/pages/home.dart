import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
  }

  void _onRefresh() async{
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async{
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length+1).toString());
    if(mounted)
      setState(() {

      });
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 6),
            width: MediaQuery.of(context).size.width,
            height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(      //渐变位置
                      begin: Alignment.topLeft, //右上
                      end: Alignment.bottomRight, //左下
                      stops: [0.0, 1.0],         //[渐变起始点, 渐变结束点]
                      colors: [Color.fromRGBO(30,70,105, 1), Color.fromRGBO(22,34,56, 1)] //渐变颜色[始点颜色, 结束颜色]
                  )
              ),
            child: Row(
              children: [
                SizedBox(width: 12,),
                Icon(Icons.android_outlined, color: Colors.blueAccent, size: 30,),
                SizedBox(width: 12,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(50)),

                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.white38, size: 30,),
                      SizedBox(width: 12,),
                      Text("欲火蝴蝶", style: TextStyle(color: Colors.white38),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 148,
            child: SmartRefresher(
              enablePullDown: true,
              enablePullUp: true,
              header: ClassicHeader(
                height: 55.0,
                releaseText: '松开手刷新',
                refreshingText: '刷新中',
                completeText: '刷新完成',
                failedText: '刷新失败',
                idleText: '下拉刷新',
              ),
              footer: CustomFooter(
                builder: (BuildContext context,LoadStatus mode){
                  Widget body ;
                  if(mode==LoadStatus.idle){
                    body =  Text("pull up load");
                  }
                  else if(mode==LoadStatus.loading){
                    body =  CupertinoActivityIndicator();
                  }
                  else if(mode == LoadStatus.failed){
                    body = Text("Load Failed!Click retry!");
                  }
                  else if(mode == LoadStatus.canLoading){
                    body = Text("release to load more");
                  }
                  else{
                    body = Text("No more Data");
                  }
                  return Container(
                    height: 55.0,
                    child: Center(child:body),
                  );
                },
              ),
              controller: _refreshController,
              onRefresh: _onRefresh,
              onLoading: _onLoading,
              child: ListView(
                children: [
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                  Text("测试"),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.account_balance_wallet), onPressed: () { print(111111); },)
          ],
        ),
      ),
    );
  }

}