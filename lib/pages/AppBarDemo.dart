import 'package:flutter/material.dart';

class AppBarDempPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBarDempPage'),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          // leading:IconButton(
          //   icon:  Icon(Icons.menu),
          //   onPressed: (){
          //     print('111');
          //   },
          // ),
          actions: [  //标题栏 右侧按钮
            IconButton(
              icon:  Icon(Icons.search),
              onPressed: (){
                print('111');
              },
            ),
            IconButton(
              icon:  Icon(Icons.settings),
              onPressed: (){
                print('111');
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: '热门',),
              Tab(text: '推荐',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                ListTile(
                  title:Text('第一个tab')
                ),
                ListTile(
                    title:Text('第一个tab')
                ),
                ListTile(
                    title:Text('第一个tab')
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                    title:Text('第二个tab')
                ),
                ListTile(
                    title:Text('第二个tab')
                ),
                ListTile(
                    title:Text('第二个tab')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
