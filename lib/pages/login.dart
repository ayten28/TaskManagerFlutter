import 'package:flutter/material.dart';
import 'package:task_manager/pages/mainpage.dart';
import 'login.dart';
//import 'register.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xFFeaf4f4),
        constraints: BoxConstraints.expand(),

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Image.asset('images/together.png'),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6b9080),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xffa4c3b2), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xff6b9080), width: 2),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'UserName',
                        labelStyle: new TextStyle(color: Color(0xffa4c3b2),
                            //fontSize: 22
                        ),
                        hintText: 'Enter UserName',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Color(0xffa4c3b2), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Color(0xff6b9080), width: 2),
                          ),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                          labelStyle: new TextStyle(color: Color(0xffa4c3b2),
                              //fontSize: 22
                          ),
                        hintText: 'Enter Password',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MainPageScreen.id);
                        },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.only(left: 50, right: 50, top: 15, bottom: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        backgroundColor: Color(0xff6b9080)
                      ),
                      child: Text('Login',
                        style: TextStyle(
                            color: Color(0xFFf6fff8),
                            fontSize: 19
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
