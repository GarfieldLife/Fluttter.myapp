import 'package:flutter/material.dart';

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
          title: Text('MyFlutter'),
        ),
        body: Demo2(),
      ),
    );
  }
}


//有状态组件
class Demo1 extends StatefulWidget {

  @override
  _Demo1State createState() => _Demo1State();
}
class _Demo1State extends State<Demo1> {
  int countNum=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 200,),
        Chip(
          label: Text('你好${this.countNum}'),
        ),
        SizedBox(height: 20,),
        RaisedButton(
            child: Text('Button'),
            onPressed: (){
              setState(() {
                this.countNum++;
              });
            })
      ],
    );
  }
}

//自增List
class Demo2 extends StatefulWidget {
  @override
  _Demo2State createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
            children: this.list.map((e) {
              return ListTile(
                title: Text(e),
              );
            }).toList()
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('按钮'),
          onPressed: (){
            setState(() {
              this.list.add('今日热点新闻XXXXXXXXXXX');
            });
          }
        )
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List list=new List();
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: <Widget>[
        Column(
            children: this.list.map((value){
              return ListTile(
                title: Text(value),
              );
            }).toList()
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
            setState(() {
              this.list.add('新增数据1');
              this.list.add('新增数据2');
            });
          },
        )
      ],
    );
  }
}
