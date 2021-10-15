// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:patient_project/Home/Sign_in/Sign_in.dart';

import '../../Color.dart';
import '../../responsive.dart';
import 'header_button.dart';
import 'header_search.dart';
import 'header_tab.dart';

class Luyou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Sign': (context) => SignUpApp(),
      },
      home: Responsive(
        desktop: Header_tab_search_in(),
        mobile: Header_tab_search_in(),
        tablet: Header_tab_search_in(),
      ),
    );
  }
}

class Header_tab_search_in extends StatefulWidget {
  @override
  _Header_tab_search_in createState() => _Header_tab_search_in();
}

class _Header_tab_search_in extends State<Header_tab_search_in>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        //顶部TabBar
        length: 4, //顶部TabBar数量
        initialIndex: 1,
        child: Scaffold(
          //这里配置bottom属性来写TabBar
          appBar: AppBar(
            //顶部内容
            backgroundColor: kPrimaryColor,
            title: Row(
              //title 里面放TabBar组件
              children: <Widget>[
                Text("pewbuiv"),
                MyTabBar(_tabController),
                if (Responsive.isDesktop(context))
                  searchBox("Search", "image/header_search.png"),
                Spacer(),
                Wrap(
                  spacing: 10,
                  children: [
                    ButtonBox(
                      title: 'Sign in',
                      url: '/Sign',
                    ),
                    ButtonBox(
                      title: 'Join us',
                      url: '',
                    ),
                  ],
                ),
                Text("    ")
              ],
            ),
          ),

          body: MyTabBarView(_tabController),
        ));
  }
}
