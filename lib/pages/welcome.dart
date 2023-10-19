import 'package:flutter/material.dart';
import 'login.dart';
//import 'register.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xFF6b9080),
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
                      'Task Manager.',
                      style: TextStyle(
                        fontSize: 50,
                        //fontWeight: FontWeight.bold,
                        color: Color(0xFFf6fff8),
                      ),
                    ),
                    Text(
                      'Achieve your goals together.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Color(0xFFf6fff8),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {Navigator.pushNamed(context, LoginScreen.id);},
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.only(left: 50, right: 50, top: 15, bottom: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        side: BorderSide(width: 1.0, color: Colors.white),
                      ),
                      child: Text('Sign In',
                        style: TextStyle(
                            color: Color(0xFFf6fff8),
                            fontSize: 23
                        ),
                      ),
                    )
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
