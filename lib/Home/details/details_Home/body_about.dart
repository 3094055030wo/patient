import 'package:flutter/material.dart';

Align buildabout1(BuildContext context, String title, String url) {
  return Align(
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onTap: () {
              Navigator.pushNamed(context, url);
            },
          ),
        ],
      ),
    ),
  );
}

Align buildabout2(BuildContext context, String title, String url) {
  return Align(
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            onTap: () {
              Navigator.pushNamed(context, url);
            },
          ),
        ],
      ),
    ),
  );
}

Container about(double scale, BuildContext context, Size size) {
  return Container(
    color: Colors.grey.withOpacity(0.1),
    padding: EdgeInsets.only(top: 80 * scale),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                buildabout1(context, "关于我们", ""),
                buildabout2(context, "公司简介", "url"),
                buildabout2(context, "品牌理念", "url"),
                buildabout2(context, "子公司", "url"),
                buildabout2(context, "联系我们", "url"),
                buildabout2(context, "服务支持", "url"),
                buildabout2(context, "微博", "url"),
              ],
            ),
            Column(
              children: [
                buildabout1(context, "产品中心", "url"),
                buildabout2(context, "云服务", "url"),
                buildabout2(context, "小程序", "url"),
                buildabout2(context, "APP", "url"),
                buildabout2(context, "其他", "url"),
              ],
            ),
            Column(
              children: [
                buildabout1(context, "调查", "url"),
                buildabout2(context, "DigitalMe", "url"),
                buildabout2(context, "Publications & talks", "url")
              ],
            ),
            Column(
              children: [
                buildabout1(context, "加入我们", "url"),
                buildabout2(context, "校园招聘", "url"),
                buildabout2(context, "社会招聘", "url"),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "image/Home_6.jpg",
                  width: size.width / 10,
                  fit: BoxFit.fitWidth,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 80 * scale,
        ),
        Text(
          "Patient Around Me",
          style: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.grey)
              .bodyText2,
        )
      ],
    ),
  );
}
