import 'package:flutter/material.dart';
import 'package:task_manager/pages/task_info.dart';
import 'package:task_manager/pages/user_info.dart';
import 'package:task_manager/components/custom_app_bar.dart';
import 'package:task_manager/pages/user_list.dart';

class MainPageScreen extends StatefulWidget {
  static String id = 'main_page_screen';
   @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [UserListScreen(), TaskInfoScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child:   BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index; // Change the current page when a button is tapped
                });
              },

              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.group),
                  label: 'Users',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.task),
                  label: 'Tasks',
                ),

              ],
            ),
          )
      ),


    );
      // body: Container(
      //   width: double.infinity,
      //   color: Color(0xFFeaf4f4),
      //   constraints: BoxConstraints.expand(),
      //   child: Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 24.0),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: <Widget>[
      //         // Image.asset('images/together.png'),
      //         Container(
      //           child: Column(
      //             children: <Widget>[
      //
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

  }
}
