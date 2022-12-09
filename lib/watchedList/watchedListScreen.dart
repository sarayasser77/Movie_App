import 'package:flutter/material.dart';
class watchedList extends StatelessWidget {
  const watchedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Watched',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
