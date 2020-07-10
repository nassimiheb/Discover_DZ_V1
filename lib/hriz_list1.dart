import 'package:flutter/material.dart';
class Service{
  String nom;
  String image;
}
class HListView1 extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => new _horiz_ListState();
}
class _horiz_ListState extends State<HListView1> {
  final List<String> numbers = ['assets/Ala/5.jpg',
    'assets/Ala/1.jpg',
    
    'assets/Ala/3.jpg',
    'assets/Ala/4.jpg',
    'assets/Ala/6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return 
       Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 14.0),
        height: MediaQuery.of(context).size.height * 0.2,
        child://Column(children: <Widget>[
          //Text("BESr"),
            ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: numbers.length, itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.35,
               // child: Card(
                  //color: Colors.white,
                  child: Container(
                    width: 250.0,
                    child: Center(
                      child: Image.asset(numbers[index],)/*Stack(children: <Widget>[
                        Text(numbers[index].toString(), style: TextStyle(color: Colors.white, fontSize: 36.0),)
 
                      ],)*/
                    //Text(numbers[index].toString(), style: TextStyle(color: Colors.white, fontSize: 36.0),)
                    ),
                  ),
                //),
              );
        }),
        //],)
         
      );
    
  }
}