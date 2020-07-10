import 'package:flutter/material.dart';
import './src/SearchBar.dart';
import 'add_page.dart';
import 'budget_page.dart';
import 'horiz_listview.dart';
import 'hriz_list1.dart';
import 'plans_page.dart';
import 'search_page.dart';
import 'slide_home.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
class Home_page extends StatefulWidget {

 

  @override
  State<StatefulWidget> createState() => new _Home_pageState();
}
class _Home_pageState extends State<Home_page> {
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
                                MaterialPageRoute(builder: (context) => budget_page()),
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
    // TODO: implement build
    const _orange = const Color(0xFFF58524);
    const _magenta = const Color(0xFFF92B7E);
    const _middle = const Color(0xFFF75356);
    
  
    return new Scaffold(
  backgroundColor: Colors.white,
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
  
  body://
ListView(
              shrinkWrap: true,
              //padding: EdgeInsets.all(10.0),
              children: <Widget>[
   /*Container(
      
   )*/
   Image.asset("assets/Home.png"),
   //CarouselDemo(),
   Padding (child:Text("Hot Trips"),padding: EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),),
      HListView(),
    Padding (child:Text("BEST"),padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),),
       HListView1(),
    Padding (child:Text("BEST"),padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),),
       HListView(),
  ],
  ),
    floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Search_page()),
  );},
        child: Icon(Icons.search),
        backgroundColor: _middle,
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

  
) ; 
  

  

  }

}