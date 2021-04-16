import 'package:flutter/material.dart';
import 'Search.dart';
import '../Form.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text('跳转到搜索页面',
          ),
          color: Theme.of(context).accentColor, //按钮样式跟随主题颜色
          textTheme: ButtonTextTheme.primary, //字体样式 primary： 白色 Normal 黑色   还一个是跟随主题颜色
            onPressed: (){
            //普通路由写法
              // Navigator.of(context).push(
              //     MaterialPageRoute(
              //         builder: (context) => SearchPage()
              //     ),
              // );
            //命名路由写法
            Navigator.pushNamed(context, '/search',arguments:{'id':'123'});
        }),
        RaisedButton(
            child: Text('跳转到表单页面并传值'),
            onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (content)=>FormPage(title:'我是标题'))
            );
        }),
        RaisedButton(
            child: Text('跳转到AppBar'),
            onPressed: (){
              Navigator.pushNamed(context, '/appBarDemo');
            }),
        RaisedButton(
            child: Text('跳转到TabBarController'),
            onPressed: (){
              Navigator.pushNamed(context, '/tabBarController');
            }),
      ],
    );
  }
}
