import 'package:flutter/material.dart';
class Service{
  String nom;
  String image;
}
class HListView extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => new _horiz_ListState();
}
class _horiz_ListState extends State<HListView> {
  final List<String> numbers = ['https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'];

  @override
  Widget build(BuildContext context) {
    return 
       Container(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 14.0),
        height: MediaQuery.of(context).size.height * 0.2,
        child://Column(children: <Widget>[
          //Text("BESr"),
            ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: numbers.length, itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.25,
               // child: Card(
                  //color: Colors.white,
                  child: Container(
                    width: 150.0,
                    child: Center(
                      child: Image.network(
                        numbers[index],
                        //fit: BoxFit.fill,
                      ),/*Stack(children: <Widget>[
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