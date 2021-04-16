import 'package:flutter/material.dart';
import 'tabs/HomePage.dart';
import 'tabs/SettingPage.dart';
import 'tabs/catePage.dart';

class Tabs extends StatefulWidget {
  final index;

  const Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;

  _TabsState(index) {
    this._currentIndex = index;
  }

  List _pageList = [HomePage(), CatePage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('底部按钮+导航+路由'),
      ),
      body: this._pageList[this._currentIndex],
      floatingActionButton:Container(
        height: 70,
        width: 70,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),

        ),

        child:  FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              this._currentIndex = 1;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int i) {
          setState(() {
            this._currentIndex = i;
          });
          print(i);
        },
        type: BottomNavigationBarType.fixed, //设置底部按钮可以多个 （不设置的话只能最多3个）
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('设置'))
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Row(
            children: [
              Expanded(
                //   child: DrawerHeader(  自定义的头部样式组件
                //    child: Text('Hello Flutter'),
                //     decoration: BoxDecoration(
                //       //color: Colors.yellow  背景颜色
                //       //背景图片
                //       image: DecorationImage(
                //         image: NetworkImage('https://www.itying.com/images/flutter/1.png'),
                //         fit:BoxFit.cover,
                //       )
                //     ),
                // ),
                //官方给出的侧边栏头部样式组件
                child: UserAccountsDrawerHeader(
                  accountName: Text('Garfield'),
                  accountEmail: Text('xxxx@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/3.png'),
                  ),
                  decoration: BoxDecoration(
                    //color: Colors.yellow  背景颜色
                    //背景图片
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.itying.com/images/flutter/2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // otherAccountsPictures: [
                  //  Image.network(
                  //       'https://www.itying.com/images/flutter/1.png'),
                  // ],
                ),
              ),
            ],
          ),
          ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),

          ),
          Divider(),
          ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('用户中心'),
            onTap: (){
                Navigator.of(context).pop();   //关闭侧边栏
              Navigator.pushNamed(context, '/user');
            },
          ),
          Divider(),
          ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心')),
          Divider(),
        ],
      )),
      endDrawer: Drawer(
        child: Text('right Drawer'),
      ),
    );
  }
}
