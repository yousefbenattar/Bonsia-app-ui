import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyItem extends StatelessWidget {
  const BuyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 236, 236),
      appBar: AppBar(
        actions: [
          Container(
            margin:const EdgeInsets.only(right: 25),
            child:const Icon(Icons.share,color: Color.fromARGB(255, 59, 117, 61)))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
       // color: Colors.amber,
        margin:const EdgeInsets.only(left: 25),
        child: Stack(children: [
         
          Positioned(
            top: 210,
            child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
              color: Colors.white
            ),
            alignment: Alignment.center,
            child: Container(
              margin:const EdgeInsets.only(left: 15,right: 50,top: 35),
              child: Column(children: [
                
             const   Row(children: [
                  Text('Chinesse Elm',style: TextStyle(fontSize:25,
                  fontWeight: FontWeight.bold,color: Color.fromARGB(255, 40, 107, 42)),),
                ],),
             const   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Text('\$350',style: TextStyle(fontSize:25,
                 fontWeight: FontWeight.bold,color:  Color.fromARGB(255, 40, 107, 42)),),
                Text('Plantes Age 6 Years'),
                ],),
                Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
              Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Color.fromARGB(255, 210, 236, 58)
                ),
                child: Row(
                  children: [
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    const  Icon(Icons.add,color: Colors.white),
                      Container(
                        width: 35,
                        height:25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,
                        child:const Text('01'),
                      ),
                     const Icon(Icons.remove,color: Colors.white,)
                    ]),
                
                  ],
                  
                ),),
                    
                    Row(children: [
                      Icon(Icons.star,color: Colors.amber,size: 12,),
Text('4.6/Review 4606',style: TextStyle(fontSize: 12),)
                      ],)
                ],),
                SizedBox(height: 25,),
              Text('data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data'),
              ],),
            ),
          )),
          Positioned(
          right: 20,
          top: 190,
          child: Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: Colors.green
          ),
          child: Icon(Icons.favorite,color: Color.fromARGB(255, 171, 243, 104),))),
          const Image(image: AssetImage('assets/img_1.png'),height: 250,width: 250,),
        ]),
      ),
    );
  }
}