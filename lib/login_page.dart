import 'package:discovery_dz/home_page.dart';
import 'package:flutter/material.dart';

import 'register_page.dart';
//import 'package:test11/button.dart';

class Login_page extends StatefulWidget {

 

  @override
  State<StatefulWidget> createState() => new _Login_pageState();
}

enum FormMode { LOGIN, SIGNUP }
 const FBcolor = const Color(0xFF4267B2);
 const Orange = const Color(0xFFF58524);
class _Login_pageState extends State<Login_page> {
  
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
              _showEmailInput(),
              _showPasswordInput(),
               _showForgetPassword(),
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
              _showSecondaryButton(),
              _showRegister(),
              //_showErrorMessage(),
            ],
          ),
        ));
  }
Widget _showLogo() {
    return new Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset('assets/logo_rose.png'),
        ),
      ),
    );
  }

Widget _showForgetPassword() {
   return Padding(
     padding: const EdgeInsets.fromLTRB(200.0, 0.0, 0.0, 0.0),
      child:
     FlatButton(
      child: 
           new Text('Forgot Password ?',
              style: new TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300)),
           
      onPressed: (){}
    )
   );
  
}
  Widget _showEmailInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 70.0, 20.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Email',
            icon: new Icon(
              Icons.mail,
              color: Colors.grey,
            )
            ),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => _email = value.trim(),
      ),
    );
  }

  Widget _showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Password',
            icon: new Icon(
              Icons.lock,
              color: Colors.grey,
            )),
        validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
        onSaved: (value) => _password = value.trim(),
      ),
    );
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
                                MaterialPageRoute(builder: (context) => Home_page()),
                              );
                      },
                      child: Text(
                        "LOGIN",
                        style: new TextStyle(
                            color: Colors.white,
                            fontFamily: 'Oxygen',
                            fontSize: 16),
                      )),
                ),
              );
  }
  Widget _showSecondaryButton() {
    return new Padding(
        padding: EdgeInsets.fromLTRB(1.0, 25.0, 1.0, 0.0),
        child: SizedBox(
          height: 40.0,
          child: new RaisedButton(
            elevation: 1.0,
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
            color: FBcolor,
            child: 
            Row(
               children: <Widget>[
              _formMode == FormMode.LOGIN
                ? Padding(
                    padding: EdgeInsets.fromLTRB(72.0, 0.0, 0.0, 0.0),
                    child:Text('Login with Facebook',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),textAlign: TextAlign.center)
                    )
                    //)
                : Padding(
                    padding: EdgeInsets.fromLTRB(72.0, 0.0, 0.0, 0.0),
                    child:
                  Text('Create account',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),textAlign: TextAlign.center),
                    ),
                    
                  ],
              ),
            onPressed: (){},
               
          )
        ));
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
                
            onPressed: (){
              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => register_page()),
                              );
            }
    )
   ), 
    ],
    ); 
  }
} 