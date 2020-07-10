import 'package:flutter/material.dart';

import 'search_page.dart';
import 'slide_home.dart';

class Details_page extends StatefulWidget {

 

  @override
  State<StatefulWidget> createState() => new _Details_pageState();
}
class _Details_pageState extends State<Details_page> {
  String _comment;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     const Orange = const Color(0xFFF58524);
    return Scaffold(
      body:ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(10.0),children: <Widget>[
   
             CarouselDemo(),
             Row(children: <Widget>[
               new Container(
              width: 170.0,
              padding: const EdgeInsets.only(top: 16.0),
              child: new RaisedButton(
                child: Icon(Icons.expand_more,color:Orange  ,),
                colorBrightness: Brightness.dark,
                onPressed: () {
                  //_loginAttempt(context);
                },
                color: Colors.white,
              ),
            ),
               new Container(
              width: 170.0,
              padding: const EdgeInsets.only(top: 16.0),
              child: new RaisedButton(
                child:Icon(Icons.expand_less ,color:Orange),
                colorBrightness: Brightness.dark,
                onPressed: () {
                  //_loginAttempt(context);
                },
                color: Colors.white,
              ),
            ),
            
             ],


             ),
             Container(
              child: Text("Djijil Sidi abl Aziz ,Al Aouana best place",style: new TextStyle(fontSize: 18.0, color: Colors.black),textAlign: TextAlign.left,),
            
            ),
            Container(
              child: Text("Djijil Sidi abl Aziz ,Al Aouana best place",style: new TextStyle(fontSize: 16.0, color: Colors.black45),textAlign: TextAlign.left,),
            
            ),
            Container(
              width: 200,
              height: 80,
              child: Padding(child:Image.asset('assets/nasimphoto.png'),
               padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),), 
            
            ),
            _showComents(),
            Container(
              width: 250,
              height: 150,
              child: Padding(child:Image.asset('assets/nassimphto2.png'),
               padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),), 
            
            ),
            

   ],
   ),
     
    appBar:  AppBar(
         leading:new Padding(
      padding: const EdgeInsets.all(10.0),
      child:  IconButton(
           icon: Icon(Icons.arrow_back ),
           onPressed: (){ Navigator.of(context).pop();},//_openDrawer,
         ),
    ),
         title: Padding ( padding: EdgeInsets.fromLTRB(75.0, 0.0, 0.0, 0.0),child:Text('Details') ,) 
       ),
       );
  }
  
  Widget _showComents() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Add comment ...',
            icon: new Icon(
              Icons.message,
              color: Colors.grey,
            )
            ),
        validator: (value) => value.isEmpty ? 'Comment can\'t be empty' : null,
        onSaved: (value) => _comment = value.trim(),
      ),
    );
  }
}