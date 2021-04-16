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
          title: Text('BiliBili'),
        ),
        body: ImageFunction2()
      ),
    );
  }

}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
            '我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 16.0,
            letterSpacing: 2.0
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,

        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8)
          ),
        ),
        padding: EdgeInsets.all(5.0),
      )
    );
  }
}

class HomeImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            //在BoxDecoration 中实现 image
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3021258046,2582899003&fm=26&gp=0.jpg"),
              fit: BoxFit.cover
          )
        ),
        // child: Image.network("https://i0.hdslb.com/bfs/vc/b24c872ae1ef34ebe794d1631a50b57fbdb0a482.png"),
      ),
    );
  }
}

//图片的实现方法二
class ImageFunction2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: ClipOval( //根据图片 自动做成圆形 或者椭圆形
          child: Image.asset(
            "images/cat1.jpg",
          height: 100,
          width: 100,
          fit: BoxFit.cover,
          ),
        ),
      ),
    );

  }

}