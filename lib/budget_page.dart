import 'package:flutter/material.dart';

import 'plans_page.dart';
//import 'package:test11/button.dart';

class budget_page extends StatefulWidget {

 

  @override
  State<StatefulWidget> createState() => new _budget_pageState();
}

enum FormMode { LOGIN, SIGNUP }
 const FBcolor = const Color(0xFF4267B2);
 const Orange = const Color(0xFFF58524);
class _budget_pageState extends State<budget_page> {
  
  String _email;
  String _password;
  String _errorMessage;
 FormMode _formMode = FormMode.LOGIN;

  bool _isLoading=false;
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
        
        body: Stack(
          children: <Widget>[
            _showBody(),
            _showCircularProgress(),
          ],
        ));
  }


  Widget _showCircularProgress(){
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    } return Container(height: 0.0, width: 0.0,);

  }
 Widget _showBody(){
    return new Container(
        padding: EdgeInsets.all(16.0),
        child: new Form(
          //key: _formKey,
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[

              _showLogo(),
              SizedBox(
                height: 32,
              ),
              _showBudgetInput(),
              SizedBox(
                height: 16,
              ),
              _showDepartInput(),
              SizedBox(
                height: 16,
              ),
              _showDestinationInput(),
              SizedBox(
                height: 16,
              ),
              _showPeriodInput(),
               SizedBox(
                height: 16,
              ),
              _showNumberInput(),
               SizedBox(
                height: 16,
              ),
              _showeExtra(),
               SizedBox(
                height: 16,
              ),
              _showCheckBox(),
               SizedBox(
                height: 16,
              ),
               SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 16,
              ),
              _showPrimaryButton(),
              //_showErrorMessage(),
            ],
          ),
        ));
  }



   Widget _showLogo() {
    return new Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset('assets/logo_rose.png'),
        ),
      ),
    );
  }
  Widget _showBudgetInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 30.0, 20.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Budget...',
            icon: new Icon(
              Icons.attach_money,
              color: Colors.grey,
            )
            ),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => _email = value.trim(),
      ),
    );
  }
   Widget _showDepartInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0, 20.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: ' Depart...',
            icon: new Icon(
              Icons.departure_board,
              color: Colors.grey,
            )
            ),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => _email = value.trim(),
      ),
    );
  }
  Widget _showDestinationInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0, 20.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: ' Destination...',
            icon: new Icon(
              Icons.my_location,
              color: Colors.grey,
            )
            ),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => _email = value.trim(),
      ),
    );
  }
  Widget _showPeriodInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0, 20.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: ' Period...',
            icon: new Icon(
              Icons.timelapse,
              color: Colors.grey,
            )
            ),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => _email = value.trim(),
      ),
    );
  }
   Widget _showNumberInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0, 20.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: ' Number of persons...',
            icon: new Icon(
              Icons.account_box,
              color: Colors.grey,
            )
            ),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => _email = value.trim(),
      ),
    );
  }
 
 Widget _showeExtra() {
   return Padding(
     padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child:
      new Text('Are You Coming With :',style: new TextStyle(fontSize: 18,fontWeight: FontWeight.w300),)
   );
  
}
  Widget _showCheckBox(){
    bool _isChecked=true;
    bool _isChecked1=false;
  return Container(padding: const EdgeInsets.all(5.0),
             child: new Column(
               children: <Widget>[
                new Row(children: <Widget>[new Checkbox(onChanged: (bool value) {  _isChecked=value;}, value: _isChecked),new Text('Family')],),
                new Row(children: <Widget>[ new Checkbox(onChanged: (bool value) {_isChecked1=value;}, value: _isChecked1),new Text('Car')],)
               ],
             ),        
          );
}


  
Widget _showErrorMessage() {
    if (_errorMessage.length > 0 && _errorMessage != null) {
      return new Text(
        _errorMessage,
        style: TextStyle(
            fontSize: 13.0,
            color: Colors.red,
            height: 1.0,
            fontWeight: FontWeight.w300),
      );
    } else {
      return new Container(
        height: 0.0,
      );
    }
  }

  
  Widget _showPrimaryButton() {

    const _orange = const Color(0xFFF58524);
    const _magenta = const Color(0xFFF92B7E);
    const _middle = const Color(0xFFF75356);

    return new Container(
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
                                MaterialPageRoute(builder: (context) => Plans_page()),
                              );
                      },
                      child: Text(
                        "PLAN",
                        style: new TextStyle(
                            color: Colors.white,
                            fontFamily: 'Oxygen',
                            fontSize: 16),
                      )),
                ),
              );
  }
      
  }
  Widget _showRegister() {
    return Row(
      children: <Widget>[
        Padding(
          padding :const EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
          child :Text('you don''t have any account ?' ),
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(1.0, 0.0, 0.0, 0.0),
            child:
          FlatButton(
            
            child: 
                new Text('Register',
                    style: new TextStyle(fontSize: 12.0,color: Orange, fontWeight: FontWeight.w300)),
                
            onPressed: (){}
    )
   ), 
    ],
    ); 
  }