import 'package:flutter/material.dart';
import 'package:bwflutterpro/home/home.dart';
import 'package:bwflutterpro/toolpage/toolpage.dart';

class tabbar extends StatefulWidget {
  @override
  tabbarState createState() => tabbarState();
}

class tabbarState extends State<tabbar> {
  int currentIndex = 0;
  String navigationTitle = "首页";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text(navigationTitle)
        ),
        body: IndexedStack(
          index: currentIndex,
          children: getPages(),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                title: Text(
                  '首页',
                  style: TextStyle(color: Colors.black),
                ),
                icon: getTabbarIcon(0)),
            BottomNavigationBarItem(
                title: Text(
                  '工具',
                  style: TextStyle(color: Colors.black),
                ),
                icon: getTabbarIcon(1)),

          ],
          onTap: (index) {
            changeTabIndex(index);
            changeNavigationTitle(index);
          },
        ));
  }
  changeTabIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  changeNavigationTitle(int index) {
    setState(() {
      if (index == 0) {
        navigationTitle = "首页";
      } else {
        navigationTitle = "工具";
      }
    });
  }

  getPages() {
    return [home(), toolpage()];
  }

  getTabbarIcon(int index) {
    if (index == 0) {
      if (index == currentIndex) {
        return new Image.asset('imgs/icons_home_2.png', width: 19, height: 19);
      } else {
        return new Image.asset('imgs/icons_home_1.png', width: 19, height: 19);
      }
    } else if (index == 1) {
      if (index == currentIndex) {
        return new Image.asset('imgs/icons_job_2.png', width: 19, height: 19);
      } else {
        return new Image.asset('imgs/icons_job_1.png', width: 19, height: 19);
      }
    }
  }
}
