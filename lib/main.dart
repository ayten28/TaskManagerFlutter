import 'package:flutter/material.dart';
import 'package:task_manager/pages/login.dart';
import 'package:task_manager/pages/mainpage.dart';
import 'package:task_manager/pages/user_list.dart';
import 'package:task_manager/pages/welcome.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: WelcomeScreen.id,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/logo.png'), // Replace with your splash image
        nextScreen: WelcomeScreen(), // Replace with your starting page
        duration: 3000, // Duration of the splash animation
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade, //izza etogo error kogda scale
        //https://stackoverflow.com/questions/69037927/animatedsplashscreen-pagetransitiontype-error
        backgroundColor: Color(0xFF6b9080),
      ),
     // home: AuthService().handleAuthState(),
      theme: ThemeData(fontFamily: 'DidactGothic'),
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        MainPageScreen.id: (context) => MainPageScreen(),
        UserListScreen.id: (context) => UserListScreen()
        // WelcomeScreen.id:(context) =>  WelcomeScreen(),
        // LoginScreen.id:(context) => LoginScreen(),
        // RegisterScreen.id:(context) => RegisterScreen(),
        // PersonalCabinet.id:(context) => PersonalCabinet(),
        // ContactsScreen.id:(context) => ContactsScreen(),
        // NewTask.id:(context) => NewTask()
      },
    );
  }
}
