// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:patient_project/Home/details/details_Home/Home_details.dart';

import '../../Color.dart';

TabBar MyTabBar(TabController _tabController) {
  return TabBar(
    //这里面写TabBar
    isScrollable: true, //允许滚动
    indicatorColor: kTextColors, //指示器颜色
    indicatorWeight: 5,
    //指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽
    indicatorSize: TabBarIndicatorSize.label, //指示器大小,底部边框
    labelColor: Colors.white, //选中label颜色
    unselectedLabelColor: kTextColors, //未选中label颜色
    tabs: const <Widget>[
      Tab(text: "HOME"),
      Tab(text: "CONDITIONS"),
      Tab(text: "TREATMENTS"),
      Tab(text: "SYMPTOMS")
    ],
    controller: _tabController,
  );
}

TabBarView MyTabBarView(TabController _tabController) {
  return TabBarView(
    //关联上面的bottomTabBar 这里可以配置多个组件,
    //数组数量跟TabBar要一致
    // ignore: prefer_const_literals_to_create_immutables
    children: <Widget>[
      Home(),
      Text("2"),
      Text("3"),
      Text("4"),
    ],
    controller: _tabController,
  );
}
