import 'package:flutter/material.dart';

Container dog(BuildContext context, double scale, Size size) {
  return Container(
    color: Colors.grey.withOpacity(0.1),
    padding: EdgeInsets.symmetric(vertical: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              "写代码我们是认真的",
              style: Theme.of(context)
                  .textTheme
                  .apply(fontSizeFactor: 1.5)
                  .subtitle1,
            ),
            SizedBox(
              height: 10 * scale,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: size.width / 3),
              child: Text(
                "程序员问科比：“你为什么这么成功？”科比：“你见过凌晨四点的洛杉矶吗？”"
                "程序员：“见过啊，一般那个时候我还在写代码，怎么了？”科比：“饿...”",
                style: Theme.of(context)
                    .textTheme
                    .apply(fontSizeFactor: 1.2)
                    .bodyText1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            )
          ],
        ),
        Image.asset(
          "image/Home_3.jpg",
          fit: BoxFit.fitWidth,
          width: size.width / 3,
        )
      ],
    ),
  );
}
