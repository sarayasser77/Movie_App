import 'package:flutter/material.dart';
class browseScreen extends StatelessWidget {

List Browse=['Action'
    ,'Comedy'
    ,'Adventure'
    ,'Crime'
    ,'Documentary'
    ,'Drama'
    ,'War'
    ,'Romance'
    ,'Mystery'
    ,'Horror'];
List<Color> colors=[
Colors.grey,
  Colors.blueGrey.shade500,
  Colors.blueGrey.shade500,
  Colors.grey,
  Colors.grey,
  Colors.blueGrey.shade500,
  Colors.blueGrey.shade500,
  Colors.grey,
  Colors.grey,
  Colors.blueGrey.shade500,

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Browse Category',style: TextStyle(color: Colors.white),),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
            crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ), itemBuilder: (ctx,index){
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(color: colors[index],
              borderRadius: BorderRadius.circular(20),border: Border.all(color: colors[index])),
          height: 100,
          width: 100,
          child: Text('${Browse[index]}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
        );

      },
      itemCount: Browse.length,
      ),
    );
  }
}
