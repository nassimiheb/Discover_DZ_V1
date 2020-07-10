import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:discovery_dz/login_page.dart';
import 'package:flutter/material.dart';

import 'add_page.dart';
import 'home_page.dart';
import 'loader_search_bar.dart';
import 'search_page.dart';

class Plans_page extends StatefulWidget {
  @override
  State createState() => Plans_pageState();
}const _middle = const Color(0xFFF75356);
const Orange = const Color(0xFFF58524);
class Plans_pageState extends State<Plans_page> {
List items = getDummyList();
 int currentIndex; 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      
      //currentIndex = index;
      print(index);
      if(index==0){Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home_page()),
                              );
      }else{
        if(index==2){
          Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Plans_page()),
                              );
        }else{
          if(index==1){
            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => add_page()),
                              );
          }
        }
      }
       
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  SearchBar(
       defaultBar: AppBar(
         backgroundColor: Colors.white,
         leading:new Padding(
      padding: const EdgeInsets.all(10.0),
      child: Icon(Icons.settings,color: _middle ,),
    ),/* IconButton(
           icon: Icon(Icons.menu),
           onPressed: (){},//_openDrawer,
         ),*/
         title: Padding ( padding: EdgeInsets.fromLTRB(110.0, 15.0, 0.0, 10.0),child:Image.asset('assets/logo_rose.png') ,) 
       ),
     
     ),
        body: Container(
          child: ListView.builder(
      
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          //key: Key(items[index]),
         /* background: Container(
            alignment: AlignmentDirectional.centerEnd,
            color: Colors.red,
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),*/
          /*onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });
          },*/
         // direction: DismissDirection.endToStart,
          //child: Card(
              elevation: 5,
              child: Container(
              height: 110.0,
              child: Row(
                children: <Widget>[
                  Padding ( padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0) ,
                  child:Container(
                    height: 80.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
                      )
                    ),
                  ), 
                  ),
                  Container(
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(18, 2, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(children: <Widget>[
                            FlatButton(
                            
                            
                             child: Text("Plan :"+items[index],style: new TextStyle(fontSize: 18.0, color: Colors.black),textAlign: TextAlign.left,), 
                             onPressed: () {
                               /*Navigator.push(
                                context,
                               // MaterialPageRoute(builder: (context) => Details_page()),
                              );*/
                             },
                          ),
                          RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(9.0),
                            side: BorderSide(color: Colors.red)
                    ),
                            color: _middle,
                             child: Text("290000 DA",style: new TextStyle(fontSize: 13.0, color: Colors.white),textAlign: TextAlign.left,), 
                             onPressed: () {
                               /*Navigator.push(
                                context,
                               // MaterialPageRoute(builder: (context) => Details_page()),
                              );*/
                             },
                          ),
                          ]
                          ,),
                          
                          /*Padding(
                              padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                               child: Container(
                              width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.teal),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Text("3D",textAlign: TextAlign.center,),
                            ),
                          ),*/
                          
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 5, 0, 2),
                              child: Container(
                              width: 200,
                              child: Text("His genius finally recognized by his idol Chester",style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 48, 48, 54)
                              ),),
                              
                              
                            ),
                          )
                        ],
  
                    ),
                    ),
                  )
                ],
              ),
            ),
          //),
        );
      },
  ),
        ), floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Search_page()),
  );},
        child: Icon(Icons.search),
        backgroundColor: Colors.red,
),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        fabLocation: BubbleBottomBarFabLocation.center, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(backgroundColor: Colors.red, icon: Icon(Icons.home, color: Colors.black,), activeIcon: Icon(Icons.home, color: Colors.red,), title: Text("Home")),
            //BubbleBottomBarItem(backgroundColor: Colors.deepPurple, icon: Icon(Icons.access_time, color: Colors.black,), activeIcon: Icon(Icons.access_time, color: Colors.deepPurple,), title: Text("")),
            BubbleBottomBarItem(backgroundColor: Colors.indigo, icon: Icon(Icons.add_location, color: Colors.black,), activeIcon: Icon(Icons.add_location, color: Colors.indigo,), title: Text("")),
            BubbleBottomBarItem(backgroundColor: Colors.green, icon: Icon(Icons.money_off, color: Colors.black,), activeIcon: Icon(Icons.money_off, color: Colors.green,), title: Text(""))
        ],
      ),

        );
  }
  static List getDummyList() {
    List list = List.generate(10, (i) {
      return "Item ${i + 1}";
    });
    return list;
  }
}