import 'package:flutter/material.dart';
class Releases extends StatelessWidget {
  const Releases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Sara yasser',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              //the first image
              Container(
                height: MediaQuery.of(context).size.height*.37,
                width: double.infinity,
                child: Image.asset('images/dazai.jpg',fit: BoxFit.fill,),
              ),
              SizedBox(height: 10,),
              //description of image:
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                   Text('Sara yasser',style: TextStyle(color: Colors.white),),
                    SizedBox(height: 10,),
                    Text('26/7/2003',style: TextStyle(color: Colors.white),),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              //movie and its description:
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset('images/dazai.jpg'),
                    ),
                  ),
                  SizedBox(width: 10,),
                   Expanded(
                    child: Column(
                      children: [
                        //description of movie
                        const Text('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh',
                          style: TextStyle(color: Colors.white,fontSize:20),
                          maxLines: 5,overflow:TextOverflow.ellipsis ,),
                        SizedBox(height: 5,),
                        //Rate
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text('2.5',style: TextStyle(color: Colors.white,fontSize: 15),)
                          ],
                        ),
                      ],
                    )
                  ),
                ],
              ),
              SizedBox(height: 15,),
              //more like this:
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(4),
                height: MediaQuery.of(context).size.height*.3,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey.shade900),
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('More Like This',style: TextStyle(color: Colors.white,fontSize: 20),),
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

                                                    child: Image.asset('images/dazai.jpg',fit:BoxFit.cover ,),
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
          )
        ],
      )
    );
  }
}
