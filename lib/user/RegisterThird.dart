import 'package:flutter/material.dart';
import '../pages/Tabs1.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成注册")
      ),body:Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text("输入密码完成注册"),
          SizedBox(height: 40),
          RaisedButton(
            child: Text('确定'),
            onPressed: (){
              //使用替换路由可以直接用下方返回方式。
                //Navigator.of(context).pop();
              //任何情况下 返回根 页面
              Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(builder: (content)=>Tabs(index:2)), (route) => false);
            },
          )
        ],
      )
    );
  }
}