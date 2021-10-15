import 'package:flutter/material.dart';

import '../../../Color.dart';

Container banner(Size size, double scale) {
  return Container(
    width: size.width,
    height: size.width * 580 / 1920,
    child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "image/Home_2.jpg",
                fit: BoxFit.fitWidth,
                width: size.width,
              ),
              Positioned(
                  left: size.width / 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient Around Me",
                        style: Theme.of(context)
                            .textTheme
                            .apply(bodyColor: kTextColors, fontSizeDelta: 20)
                            .headline6,
                      ),
                      SizedBox(height: 30 * scale),
                      Text(
                        "来到这里你不再是孤单一人\n其实，它也没有那么可怕",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(height: 40 * scale),
                      Text(
                        "了解详情>",
                        style: Theme.of(context)
                            .textTheme
                            .apply(bodyColor: Colors.blue)
                            .subtitle2,
                      )
                    ],
                  ))
            ],
          );
        }),
  );
}
