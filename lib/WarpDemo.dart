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
          title: Text('MyFltter'),
        ),
        body: Demo1(),
      ),
    );
  }

}
//warp demo
class Demo1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      spacing: 10,
        runSpacing: 5,
        children: [
          MyButton('第一季'),
          MyButton('第二季'),
          MyButton('第三季'),
          MyButton('第四季'),
          MyButton('第五季'),
          MyButton('第六季'),
          MyButton('第七季'),
        ],
    );
  }

}

class MyButton extends StatelessWidget{
  final String text;

  const MyButton(this.text ,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );
  }
}

