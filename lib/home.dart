import 'package:bonsai_app_ui/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 228, 225, 225),
      appBar: AppBar(
        leading: Container(
          margin:const EdgeInsets.only(left: 0),
          child:const Icon(Icons.menu)),
        title:const Text('Bonsia World'),
        centerTitle: true,
        actions: [Container(
          margin:const EdgeInsets.only(right: 15),
          child:const Icon(Icons.shopping_bag))],
              ),

    body: SingleChildScrollView(
      child: Column(
        children: [
        const  SizedBox(height: 25,),
          Container(
            //color: Colors.red,
            margin:const EdgeInsets.only(right: 15,left: 15),
            child:const Column(children: [
              CupertinoSearchTextField(
                prefixIcon: Icon(Icons.search),
                placeholder: 'Search',),
               SizedBox(height: 15),
               
            ],),
          ),
           InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const BuyItem()));
            },
             child: Container(
              margin:const EdgeInsets.only(top: 15),
              padding:const EdgeInsets.only(left: 15),
               child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      decoration:const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                        image: DecorationImage(image: AssetImage('assets/spl.jpg'),fit: BoxFit.fill),
                        color: Colors.amber
                      ),
                      child:const Stack(
                      children: [
                      Positioned(top: -5,right: -15, child: Image(image: AssetImage('assets/img_1.png'),width: 250,height: 250,)),
                      Positioned(bottom: 10,left: 20,
                      child: Text('\$350',style:TextStyle(
                      color: Colors.white,  
                      fontSize: 25,
                      fontWeight: FontWeight.bold) ,)),
                      Positioned(bottom: 10,right: 25,
                      child: Text('25% OFF',style:TextStyle(
                      color: Color.fromARGB(255, 59, 117, 61),  
                      fontSize: 25,
                      fontWeight: FontWeight.bold),)),
                      Positioned(
                        top: 190,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('chinesse Elm',style:TextStyle(
                      color: Colors.white,  
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
                          Text("Plane's age 6 years",style:TextStyle(
                      color: Colors.grey,  
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
                        ],
                      ))
                      ],),
                    ),
             ),
           ),
          const SizedBox(height:15),
           Container(
            alignment: Alignment.topLeft,
            margin:const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.only(left: 15),
             child:const Text('Variantes',style:TextStyle(
                      color: Color.fromARGB(255, 59, 117, 61),  
                      fontSize: 25,
                      fontWeight: FontWeight.bold),),
           ),
      const SizedBox(height:15),
      treeslist ()
        ],
      ),
    ),
    bottomNavigationBar:const BottomAppBar(
      color: Color.fromARGB(255, 59, 117, 61),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Icon(Icons.home,color: Colors.white,),
        Icon(Icons.camera_indoor,color: Colors.grey),
        Icon(Icons.settings,color: Colors.grey),
        Icon(Icons.account_circle,color: Colors.grey),
      ]),
      ),
    );
  }
}


class Tree {
  String img;
  String name ;
  String prix ;
  Icon type ;
  Tree({required this.img,required this.name,required this.prix,required this.type});
}

List<Tree> list = [
  Tree(img: 'assets/img_2.png', name: 'Ficuse Retusa', prix: '\$150', type:const Icon(Icons.sunny,color: Colors.amber,)),
  Tree(img: 'assets/img_3.png', name: 'Carmon Retusa', prix: '\$250', type:const Icon(Icons.water_drop,color: Colors.blueAccent,)),
  Tree(img: 'assets/img_2.png', name: 'Ficuse Retusa', prix: '\$150', type:const Icon(Icons.sunny,color: Colors.amber,)),
  Tree(img: 'assets/img_3.png', name: 'Carmon Retusa', prix: '\$250', type:const Icon(Icons.water_drop,color: Colors.blueAccent,)),
];


Widget treeslist (){
  return SizedBox(
height: 180,
width: double.infinity,
child: ListView.builder(
  scrollDirection: Axis.horizontal,
  shrinkWrap: true,
  itemCount: list.length,
  itemBuilder: (context,index){
    return Container(
      margin:const EdgeInsets.all(8),
 
      child: Stack(
        children: [
         const SizedBox(
            
            height: 85,
            width: 150,
       
          ),
           Positioned(
            top: 60,
             child: Container(
              
              height: 85,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white),
                     ),
           ),
           Positioned(
            right: -10,
            child: Image(image: AssetImage(list[index].img),width: 100,height: 100,),),
            Positioned(
              left: 10,
              top: 75,
              child: list[index].type),
              Positioned(
              left: 10,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(list[index].name),
                  Text(list[index].prix),
              ],)
              ),
              Positioned(
                right: -10,
                bottom: 5,
              child: Container(
                height: 25,
                width: 50,
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45)
                  ),
                  color: Color.fromARGB(255, 151, 226, 53)
                ),
                child:const Icon(Icons.shopping_bag,size: 15,color: Colors.white,),
              ))
        ],
      ),
    );
  }),
  );
}