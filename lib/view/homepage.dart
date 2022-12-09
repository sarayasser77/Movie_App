import 'package:flutter/material.dart';
import 'package:movie_app/Browse/browseScreen.dart';
import 'package:movie_app/search/searchscreen.dart';
import 'package:movie_app/view/firstScreen.dart';
import 'package:movie_app/watchedList/watchedListScreen.dart';
class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentindex=0;
  List Screens=[firstScreen(),searchScreen(),browseScreen(),watchedList(),];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:Screens[currentindex] ,
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Colors.yellow
        ),
        backgroundColor: Colors.black,
        currentIndex: currentindex,
        onTap: (int index){
          currentindex=index;
          setState(() {
          }
          );
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items:  const [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.browser_updated_rounded),label: 'browser',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.access_time),label: 'Watched',backgroundColor: Colors.black),
      ],

      ),
    );
  }
}
