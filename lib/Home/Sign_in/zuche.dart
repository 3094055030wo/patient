// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'package:patient_project/Home/details/details_Home/body_about.dart';

class Zuche extends StatefulWidget {
  @override
  zuche createState() => zuche();
}

class zuche extends State<Zuche> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  bool _isObscure = true;
  Color _eyeColor;

  List _loginMethod = [
    {
      "title": "微信",
      "icon": GroovinMaterialIcons.qqchat,
    },
    {
      "title": "QQ",
      "icon": GroovinMaterialIcons.wechat,
    },
    {
      "title": "手机号",
      "icon": GroovinMaterialIcons.phone,
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double scale = size.width / 1920;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Patients",
                    style: TextStyle(fontSize: 50, color: Colors.yellow),
                  ),
                  Text(
                    "Around",
                    style: TextStyle(fontSize: 40, color: Colors.grey),
                  ),
                  Text(
                    "Me",
                    style: TextStyle(fontSize: 50, color: Colors.yellow),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(
                width: 400,
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.blueGrey,
                      width: 3,
                    ),
                  ),
                  child: FormChickZhuce(context),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }

  Form FormChickZhuce(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              SizedBox(
                width: 320,
                child: buildEmailTextField(),
              ),
            ],
          ),

          SizedBox(height: 30.0),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              SizedBox(
                width: 320,
                child: buildPasswordTextField(context),
              ),
            ],
          ),

          SizedBox(height: 30.0),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              SizedBox(
                width: 320,
                child: buildRePasswordTextField(context),
              ),
            ],
          ),

          // buildForgetPasswordText(context),
          SizedBox(height: 60.0),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              buildLoginButton(context, 0xFFFAFAFA, "取消"),
              SizedBox(
                width: 10,
              ),
              buildLoginButton(context, 0xFFFFE0B2, "注册"),
            ],
          ),
          SizedBox(height: 30.0),
          buildOtherLoginText(),
          buildOtherMethod(context),
          buildRegisterText(context),
          // about(scale, context, size)
        ],
      ),
    );
  }

  Align buildRegisterText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('没有账号？'),
            GestureDetector(
              child: Text(
                '点击注册',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/zuche");
              },
            ),
          ],
        ),
      ),
    );
  }

  ButtonBar buildOtherMethod(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: _loginMethod
          .map((item) => Builder(
                builder: (context) {
                  return IconButton(
                      icon: Icon(item['icon'],
                          color: Theme.of(context).iconTheme.color),
                      onPressed: () {
                        //TODO : 第三方登录方法
                        // ignore: unnecessary_new
                        Scaffold.of(context).showSnackBar(new SnackBar(
                          content: Text("${item['title']}登录"),
                          action: SnackBarAction(
                            label: "取消",
                            onPressed: () {},
                          ),
                        ));
                      });
                },
              ))
          .toList(),
    );
  }

  Align buildOtherLoginText() {
    return Align(
        alignment: Alignment.center,
        child: Text(
          '其他账号登录',
          style: TextStyle(color: Colors.grey, fontSize: 14.0),
        ));
  }

  Align buildLoginButton(BuildContext context, int color, String title) {
    return Align(
      child: SizedBox(
        height: 45.0,
        width: 180.0,
        child: RaisedButton(
          child: Text(title, style: TextStyle(fontSize: 17, color: Colors.black)
              // Theme.of(context).primaryTextTheme.headline1,
              ),
          color: Color(color),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              ///只有输入的内容符合要求通过才会到达此处
              _formKey.currentState.save();
              //TODO 执行登录方法
              print('email:$_email , assword:$_password');
            }
          },
          shape: StadiumBorder(side: BorderSide()),
        ),
      ),
    );
  }

  Padding buildForgetPasswordText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
          child: Text(
            '忘记密码？',
            style: TextStyle(fontSize: 14.0, color: Colors.blue),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  TextFormField buildPasswordTextField(BuildContext context) {
    return TextFormField(
      onSaved: (value) => _password = value,
      obscureText: _isObscure,
      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) {
          return '请输入密码';
        }
      },
      decoration: InputDecoration(
        labelText: 'Password',
        icon: Icon(
          Icons.password,
          color: Colors.yellow,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.yellow,
            width: 2.0,
          ),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: _eyeColor,
          ),
          onPressed: () {
            setState(
              () {
                _isObscure = !_isObscure;
                _eyeColor = (_isObscure
                    ? Colors.grey
                    : Theme.of(context).iconTheme.color);
              },
            );
          },
        ),
      ),
    );
  }

  TextFormField buildRePasswordTextField(BuildContext context) {
    return TextFormField(
      onSaved: (value) => _password = value,
      obscureText: _isObscure,
      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) {
          return '请再次输入密码';
        }
      },
      decoration: InputDecoration(
        icon: Icon(
          Icons.password,
          color: Colors.yellow,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        labelText: 'Again Password',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.yellow,
            width: 2.0,
          ),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: _eyeColor,
          ),
          onPressed: () {
            setState(
              () {
                _isObscure = !_isObscure;
                _eyeColor = (_isObscure
                    ? Colors.grey
                    : Theme.of(context).iconTheme.color);
              },
            );
          },
        ),
      ),
    );
  }

  TextFormField buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        icon: Icon(
          Icons.email,
          color: Colors.yellow,
        ),
        labelText: 'Emall Address',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.yellow,
            width: 2.0,
          ),
        ),
      ),
      // ignore: missing_return
      validator: (value) {
        var emailReg = RegExp(
            r"[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
        if (!emailReg.hasMatch(value)) {
          return '请输入正确的邮箱地址';
        }
      },
      onSaved: (value) => _email = value,
    );
  }

  Padding buildTitleLine() {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, top: 4.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          color: Colors.black,
          width: 40.0,
          height: 2.0,
        ),
      ),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Login',
        style: TextStyle(fontSize: 42.0),
      ),
    );
  }
}
