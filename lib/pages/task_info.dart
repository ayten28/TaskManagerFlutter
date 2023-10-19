import 'package:flutter/material.dart';

class TaskInfoScreen extends StatefulWidget {
  const TaskInfoScreen({super.key});

  @override
  State<TaskInfoScreen> createState() => _TaskInfoScreenState();
}

class _TaskInfoScreenState extends State<TaskInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Task iNfo'),
      ),
    );
  }
}
