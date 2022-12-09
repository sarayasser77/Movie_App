import 'package:flutter/material.dart';
class searchScreen extends StatelessWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body:Column(
        children: [
          TextFormField(
            decoration:  InputDecoration(
              labelText: 'Search',
              fillColor: Colors.white,
              labelStyle: const TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20)

              )

            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.separated(itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset('images/dazai.jpg',fit: BoxFit.cover,),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('V/H/99',style: TextStyle(color: Colors.white),),
                          const SizedBox(height: 5,),
                          const Text('2022',style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Icon(Icons.star,color: Colors.yellow,size: 10,),
                              SizedBox(width: 10,),
                              Text('6.4',style: TextStyle(color: Colors.grey),)
                            ],
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              );
            },
                separatorBuilder: (ctx,index){
                  return const Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  );
                },
                itemCount: 20),
          ),
        ],
      )


    );
  }
}
