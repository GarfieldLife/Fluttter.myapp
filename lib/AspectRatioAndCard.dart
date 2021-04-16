import 'package:flutter/material.dart';
import 'res/listData.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyFlutter'),
        ),
        body: Demo3(),
      ),
    );
  }

}
//根据外层父级的 打小设置内部child 的宽高比
class Demo1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
        aspectRatio: 3.0/1.0,
        child: Container(
          color: Colors.red,
        ),
      );

  }
}

//Card 组件
class Demo2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("杨紫寒",style: TextStyle(fontSize: 28),),
                subtitle: Text('高级软件工程师'),
              ),
              ListTile(
                title: Text('电话:xxxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxxx'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("郭泰江",style: TextStyle(fontSize: 28),),
                subtitle: Text('高级软件工程师'),
              ),
              ListTile(
                title: Text('电话:xxxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxxx'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("姜晓艳",style: TextStyle(fontSize: 28),),
                subtitle: Text('高级软件工程师'),
              ),
              ListTile(
                title: Text('电话:xxxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxxx'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("何慧超",style: TextStyle(fontSize: 28),),
                subtitle: Text('高级软件工程师'),
              ),
              ListTile(
                title: Text('电话:xxxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxxx'),
              ),
            ],
          ),
        ),
      ],
    );
  }

}

//图文列表的卡片
class Demo3 extends StatelessWidget{
  Widget _getCard(content,index){
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16/9,
            child: Image.network(
              listData[index]['imageUrl'],
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(listData[index]['imageUrl']),
            ),
            title: Text(listData[index]['title']),
            subtitle: Text(listData[index]['description'],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listData.length,
        itemBuilder: this._getCard
    );
  }
  
}

