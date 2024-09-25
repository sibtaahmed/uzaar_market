import 'package:flutter/material.dart';

class board extends StatefulWidget {
  const board({super.key});

  @override
  State<board> createState() => _boardState();
}

class _boardState extends State<board> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Board"),  
      backgroundColor: Colors.orange, 
    ),);
  }
}