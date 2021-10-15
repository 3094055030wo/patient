import 'package:flutter/material.dart';

import '../../Color.dart';

class ButtonBox extends StatelessWidget {
  final String title;
  final String url;

  ButtonBox({Key key, @required this.title, @required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 30,
      child: RaisedButton(
        color: Color(0xff404040),
        onPressed: () {
          Navigator.of(context).pushNamed(url);
        },
        textColor: Colors.white,
        child: Text(
          title,
          style: TextStyle(
            color: kTextColors,
            fontSize: 10,
          ),
        ),
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
