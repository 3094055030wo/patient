import 'package:flutter/material.dart';

import '../../../responsive.dart';

Container lol(double scale, BuildContext context) {
  return Container(
    child: Row(
      children: [
        Expanded(
            child: Stack(
          children: [
            Image.asset("image/Home_4.jpg"),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 80 * scale),
              child: Column(
                children: [
                  Text(
                    "苍天啊大地啊\n",
                    style: Theme.of(context)
                        .textTheme
                        .apply(bodyColor: Colors.white, fontSizeFactor: 1.5)
                        .bodyText1,
                  ),
                  if (Responsive.isDesktop(context))
                    Column(
                      children: [
                        Text(
                          "你是不是心里没点数",
                          style: Theme.of(context)
                              .textTheme
                              .apply(
                                  bodyColor: Colors.white, fontSizeFactor: 1.1)
                              .bodyText1,
                        ),
                        Text(
                          "那是我一个人能做出来的吗",
                          style: Theme.of(context)
                              .textTheme
                              .apply(
                                  bodyColor: Colors.white, fontSizeFactor: 1.1)
                              .bodyText1,
                        ),
                        Text(
                          "那是我的技术能企及的吗？",
                          style: Theme.of(context)
                              .textTheme
                              .apply(
                                  bodyColor: Colors.white, fontSizeFactor: 1.1)
                              .bodyText1,
                        ),
                        Text(
                          "......\n",
                          style: Theme.of(context)
                              .textTheme
                              .apply(
                                  bodyColor: Colors.white, fontSizeFactor: 1.1)
                              .bodyText1,
                        ),
                        Text(
                          "了解详情>",
                          style: Theme.of(context)
                              .textTheme
                              .apply(
                                  bodyColor: Colors.white, fontSizeFactor: 1.1)
                              .bodyText1,
                        )
                      ],
                    )
                ],
              ),
            )
          ],
        )),
        SizedBox(
          width: 20 * scale,
        ),
        Expanded(
            child: Stack(
          children: [
            Image.asset("image/Home_5.jpg"),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 80 * scale),
              child: Column(
                children: [
                  Text(
                    "项目改到最后\n",
                    style: Theme.of(context)
                        .textTheme
                        .apply(bodyColor: Colors.white, fontSizeFactor: 1.5)
                        .bodyText1,
                  ),
                  if (Responsive.isDesktop(context))
                    Column(
                      children: [
                        Text(
                          "已经看淡一切",
                          style: Theme.of(context)
                              .textTheme
                              .apply(
                                  bodyColor: Colors.white, fontSizeFactor: 1.1)
                              .bodyText1,
                        ),
                        Text(
                          "除了再也回不来的头发\n",
                          style: Theme.of(context)
                              .textTheme
                              .apply(
                                  bodyColor: Colors.white, fontSizeFactor: 1.1)
                              .bodyText1,
                        ),
                        Text(
                          "了解详情>",
                          style: Theme.of(context)
                              .textTheme
                              .apply(
                                  bodyColor: Colors.white, fontSizeFactor: 1.1)
                              .bodyText1,
                        )
                      ],
                    )
                ],
              ),
            )
          ],
        ))
      ],
    ),
  );
}
