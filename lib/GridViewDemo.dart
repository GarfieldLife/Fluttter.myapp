import 'package:flutter/material.dart';
import 'res/listData.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MyFlutter'),),
        body: GridViewDemo(),
      ),
    );
  }

}

class GridViewDemo extends StatelessWidget{

  List<Widget> _getDate(){
    var tempList = listData.map((val){
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(val["imageUrl"]),
            SizedBox(height: 10),
            Text(val["title"],
              style: TextStyle(
                fontSize: 15
              ),
              overflow: TextOverflow.ellipsis,)
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9)
          ),
        ),
      );
    });
    return tempList.toList();
  }


  Widget _getDate2(content,index){

      return Container(
        child: Column(
          children: <Widget>[
            Image.network(listData[index]["imageUrl"]),
            SizedBox(height: 10),
            Text(listData[index]["title"],
              style: TextStyle(
                  fontSize: 15
              ),
              overflow: TextOverflow.ellipsis,)
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
              color: Color.fromRGBO(233, 233, 233, 0.9)
          ),
        ),
      );

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //GridView.count function
    // return GridView.count(
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 15,
    //   mainAxisSpacing: 10,
    //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    //   children: this._getDate(),
    // );
    //GridView.build funciton
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
      child: GridView.builder(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10
        ),
        itemCount: listData.length,
        itemBuilder: this._getDate2,
      ),
    );
  }

}