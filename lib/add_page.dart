import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'budget_page.dart';
import 'home_page.dart';
import 'search_page.dart';

class add_page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _add_pageState();
}

class _add_pageState extends State<add_page> {
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
    
    const _middle = const Color(0xFFF75356);
    const _middle1 = const Color(0xFFfddcdd);
    

    return new Scaffold(
      appBar: new AppBar(
         backgroundColor: Colors.white,
         leading:new Padding(
      padding: const EdgeInsets.all(10.0),
      child: Icon(Icons.settings,color: _middle ,),
       ),
         title: Padding ( padding: EdgeInsets.fromLTRB(110.0, 15.0, 0.0, 10.0),child:Image.asset('assets/logo_rose.png') ,) 
       ),
       body: ListView(children: <Widget>[
         new Row(children: <Widget>[
           Container(
              margin: const EdgeInsets.all(16.0),
             width: 50.0,
             child:ClipRRect(
    borderRadius: new BorderRadius.circular(25.0),
    child: Image.asset("assets/index.png"),

    ),
    ),
     new Text('Ala Eddine',style: new TextStyle(color: Colors.black),)

         ],
         ),
         new Container(
           color: _middle1,
           child: new Column(children: <Widget>[
             new Row(children: <Widget>[
               Container(child:  IconButton(
      iconSize: 40.0,
      icon: const Icon(Icons.add,color: Colors.white,),
      tooltip: 'Add new entry',
      onPressed: () { /* ... */ },
    ),
  color: _middle,
    margin: const EdgeInsets.all(16.0),
    ),
    new Text('Upload photo or video',style: new TextStyle(color: _middle),)

             ],
             ),
          _showComents(),
          _showPrimaryButton(),
           ],),
         )
       ],),
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

    );
  }
  Widget _showComents() {
    String _comment;
        return Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: new TextFormField(
            maxLines: 1,
            keyboardType: TextInputType.text,
            autofocus: false,
            decoration: new InputDecoration(
                hintText: 'Tap a discription here ...',
                /*icon: new Icon(
                  Icons.message,
                  color: Colors.grey,
                )*/
                ),
            validator: (value) => value.isEmpty ? 'Comment can\'t be empty' : null,
            onSaved: (value) => _comment = value.trim(),
      ),
    );
  }
  Widget _showPrimaryButton() {

    const _orange = const Color(0xFFF58524);
    const _magenta = const Color(0xFFF92B7E);
    const _middle = const Color(0xFFF75356);

    return new Padding (child:
    Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    colors: [
                      _orange,
                      _middle,
                      _magenta
                    ],
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: FlatButton(
                      splashColor: Color(0x25FFDDDD),
                      highlightColor: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: (){
                        Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home_page()),
                              );
                      },
                      child: Text(
                        "Confirm",
                        style: new TextStyle(
                            color: Colors.white,
                            fontFamily: 'Oxygen',
                            fontSize: 16),
                      )),
                ),
              ),  padding: EdgeInsets.fromLTRB(59.0, 25.0, 59.0, 10.0),);
     
  }
}
