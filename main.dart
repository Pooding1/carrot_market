

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      title : 'carrot',
      home : Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 63, 56, 122),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.menu),
                Text('말밥마켓'),
                Icon(Icons.people),
              ],
            ),
          ),



          body: SingleChildScrollView(
            child: Column(
              children: [
                Item_data(price: 2222,),
                Item_data(price: 1212,),
                Item_data(price: 2121,),
                Item_data(price: 2323,),
                Item_data(price: 3232,),


              ],),
          )
         )   
      );
  }
}

class Item_data extends StatelessWidget {
    int price ;
    Item_data({ 
    super.key,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          width: 100,
          height: 100, 
          image: AssetImage('images/ccarrot.jpg')
          ),
        const SizedBox(width: 20,),
        const SizedBox(height: 0,),



        
        Flexible(
        flex :1,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
           
            const SizedBox(height: 0,),
            const Text('신성한 당근 팝니다', 
            style:TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),

            const Text('메시 기모씨',
            style:TextStyle(color: Color.fromARGB(255, 128, 128, 128))
            ),

             Text('$price원'),

            

 

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [ 
                Icon(Icons.electric_bolt_rounded,
                color: Colors.yellow,
                ),
                Text('100'),
                SizedBox(width:20,)
              ],)
            ],
          ),
        )
      ],
    );
  }
}
 