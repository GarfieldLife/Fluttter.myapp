import 'package:flutter/material.dart';
class CatePage extends StatefulWidget {
  @override
  _CatePageState createState() => _CatePageState();
}

class _CatePageState extends State<CatePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title:TabBar(
              isScrollable: true,  //当组件比较多时  开启滑动布局
              indicatorColor: Colors.purpleAccent,
              labelColor: Colors.purpleAccent,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(text:'热销'),
                Tab(text:'推荐'),
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
        )
    );
  }
}
