import 'package:flutter/material.dart';
import 'res/listData.dart' ;

void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: ForList(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
        leading: Icon(
            Icons.account_circle,
            color: Colors.green,
        ),
        trailing: Icon(
          Icons.access_alarm,
          color: Colors.yellow,
        ),
          title: Text('今天学习了Flutter'),
          subtitle: Text('内容ListView内容ListView内容ListView内容ListView内容ListView'),

        ),
        // ListTile(
        //   title: Text('今天学习了Flutter2'),
        //   subtitle: Text('内容ListTile内容ListTile内容ListTile内容ListTile内容ListTile'),
        // ),
        // ListTile(
        //   title: Text('今天学习了Scaffold'),
        //   subtitle: Text('内容内容ListTile内容ListTile内容ListTile内容ListTile内容ListTile'),
        // ),
        // ListTile(
        //   title: Text('今天学习了Flutter4'),
        //   subtitle: Text('内容Container'),
        // ),
      ],
    );
  }
}
//垂直列表
class ImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: <Widget>[
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          height: 50,
          child: Text('我是一个标题',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18
          ),
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          height: 50,
          child: Text('我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18
            ),
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Container(
          height: 50,
          child: Text('我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18
            ),
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/4.png"),
        Container(
          height: 50,
          child: Text('我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18
            ),
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          height: 50,
          child: Text('我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18
            ),
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          height: 50,
          child: Text('我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18
            ),
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Container(
          height: 50,
          child: Text('我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18
            ),
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/4.png"),
        Container(
          height: 50,
          child: Text('我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18
            ),
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
      ],
    );
  }

}

//水平列表
class chuizhiList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.deepPurpleAccent,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.green,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.red,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

}

class ForList extends StatelessWidget{

  //自定义方法 循环生成ListTile
  List<Widget> _getData(){
    List<Widget> list=new List();
    for(var i=0;i<20;i++){
      list.add(ListTile(
        title: Text('我是第$i个列表'),
      ));
    }
    return list;
  }
  //利用map方法 解析JSON 数据
  List<Widget> _getData2(){
    var tempList=listData.map((value){
      return ListTile(
        contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 0),
        leading: Image.network(value['imageUrl']),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });

    return tempList.toList();
  }

  //利用ListVeiw build方法解析JSON数组
  Widget _getData3(content,index){
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //普通调用方法
    // return ListView(
    //   padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
    //   children: this._getData2(),
    // );
    //
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder:this._getData3
    );
  }

}
