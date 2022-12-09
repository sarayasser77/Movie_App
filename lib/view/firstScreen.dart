import 'package:flutter/material.dart';
import 'package:movie_app/view/Recommended.dart';
import 'package:movie_app/view/releases.dart';
class firstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              //the first two images :
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*.33,
                    child: Image.asset('images/temp.jpg',fit:BoxFit.fill,),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        height: 180,
                        width: 150,
                        child: (
                            Image.asset('images/dazai.jpg',fit: BoxFit.fill,)
                        ),
                      )
                  )
                ],
              ),
              //Text above New Releases:
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('Sara  yasser',style: const TextStyle(color: Colors.white,fontSize: 20,),),
                    SizedBox(height: MediaQuery.of(context).size.height*.01,),
                    Container(
                        alignment: Alignment.center,
                        child: const Text('26/7/2003',style: const TextStyle(color: Colors.grey,fontSize: 15),)),
                  ],
                ),
              ),
              // New Releases:
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(4),
                height: MediaQuery.of(context).size.height*.3,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey.shade900),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('New  Releases',style: const TextStyle(color: Colors.white,fontSize: 20),),
                      const SizedBox(height: 10,),
                      Expanded(
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          height: 100,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder:(context,index){
                                return Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                  child: Stack(
                                      children:[

                                        SizedBox(

                                          height: 200,
                                          width:100,

                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (ctx){
                                                return Releases();
                                              }));
                                            },
                                              child: Image.asset('images/dazai.jpg',fit:BoxFit.cover ,)),
                                        ),
                                         Positioned(
                                          top: 0,
                                          left: 0,
                                          child:Container(
                                            margin: const EdgeInsets.all(3),
                                            decoration: const BoxDecoration(color: Colors.grey,),
                                            height: 50,
                                            width: 30,
                                            child: const Icon(Icons.add,color: Colors.black,),
                                          )
                                        ),

                                      ] ),
                                );},
                              separatorBuilder:(context,index){
                                return const SizedBox(
                                  width: 10,
                                );
                              },
                              itemCount:20),
                        ),
                      )
                    ]

                )
              ),
              //Recommended:
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(4),
                height: MediaQuery.of(context).size.height*.3,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey.shade900),
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Recommended',style: TextStyle(color: Colors.white,fontSize: 20),),
                      const SizedBox(height: 10,),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:(context,index){
                                    return Container(
                                      decoration: BoxDecoration(color: Colors.black),
                                      height: MediaQuery.of(context).size.height*.35,
                                      child: Column(
                                        children: [
                                          Expanded(
                                        flex: 6
                                            ,child: Container(
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.black),
                                              child: Stack(
                                                  children:[

                                                    SizedBox(

                                                      height: 200,
                                                      width:100,

                                                      child: GestureDetector(
                                                          onTap: (){
                                                            Navigator.push(context, MaterialPageRoute(builder: (ctx){
                                                              return Recommended();
                                                            }));
                                                          },
                                                          child: Image.asset('images/dazai.jpg',fit:BoxFit.cover ,)),
                                                    ),
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child:Container(
                                                          margin: const EdgeInsets.all(3),
                                                          decoration: const BoxDecoration(color: Colors.grey,),
                                                          height: 50,
                                                          width: 30,
                                                          child: const Icon(Icons.add,color: Colors.black,),
                                                        )
                                                    ),

                                                  ] ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Icon(Icons.star,color: Colors.yellow,),
                                                SizedBox(width: 5,),
                                                Text('8.5',style: TextStyle(color: Colors.white),)
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              child: Text('Dazai San',style: TextStyle(color: Colors.white),)
                                          ),
                                          Expanded(
                                              child: Text('26/7/2003',style: TextStyle(color: Colors.white),)),

                                        ],
                                      ),
                                    );},
                                  separatorBuilder:(context,index){
                                    return const SizedBox(
                                      width: 10,
                                    );
                                  },
                                  itemCount:20),
                            ),

                          ],
                        ),
                      ),

                    ]

                ),





              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*CircleAvatar(

                                            backgroundColor: Colors.grey,
                                            radius:20,

                                            child: Icon(Icons.add,color: Colors.black,),

                                          ),

 */
