import 'package:flutter/material.dart';

Container superCode(Size size, double scale, BuildContext context) {
  return Container(
    color: Colors.grey.withOpacity(0.1),
    width: size.width,
    child: Column(
      children: [
        SizedBox(
          height: 40 * scale,
        ),
        Text(
          "秃如其来",
          style:
              Theme.of(context).textTheme.apply(fontSizeFactor: 1.2).subtitle1,
        ),
        SizedBox(
          height: 10 * scale,
        ),
        Container(
          constraints: BoxConstraints(maxWidth: size.width - 100),
          child: Text(
            "为了一个项目，为了一个新需求，硬是差点把自己培养成“时间管理大师”。"
            "假期是个什么东西？能吃么？看不是不是资深程序员就看头发还剩多少。"
            "当他头发掉光之时就是程序功力大成之时。",
            style: Theme.of(context)
                .textTheme
                .apply(fontSizeFactor: 1.2)
                .bodyText1,
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(
          height: 20 * scale,
        ),
        Image.asset(
          "image/Home_1.jpg",
          width: size.width / 2,
        ),
        SizedBox(
          height: 40 * scale,
        ),
      ],
    ),
  );
}
