import 'package:discovery_dz/home_page.dart';
import 'package:flutter/material.dart';

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
        padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          //child: //Image.asset('assets/flutter-icon.png'),
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
      padding: const EdgeInsets.fromLTRB(0.0, 100.0, 20.0, 0.0),
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

  Widget _showSecondaryButton() {
    return new Padding(
        padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0.0),
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
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 0.0),
                    child:Text('Login with Facebook',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),textAlign: TextAlign.left)
                    )
                    //)
                : Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 0.0),
                    child:
                  Text('Create account',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),textAlign: TextAlign.left),
                    ),
                    Icon(Icons.add),
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

  
  Widget _showPrimaryButton() {
    return new Padding(
        padding: EdgeInsets.fromLTRB(20.0, 45.0, 20.0, 0.0),
        child: SizedBox(
          height: 40.0,
          child:new RaisedButton(
            elevation: 1.0,
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
            color: Orange,
            //child:  Container(
            /*decoration: const BoxDecoration(
         gradient: LinearGradient(
           colors: <Color>[
             Color(0xFF0D47A1),
             Color(0xFF1976D2),
             Color(0xFF42A5F5),
           ],
         ),
         //borderRadius: BorderRadius.all(Radius.circular(80.0))
       ), */
         child:   Row(
               children: <Widget>[
            _formMode == FormMode.LOGIN
                ? Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 189.0, 0.0),
                    child:  Text('Login',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),textAlign: TextAlign.left),
                    )
                    
                : Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 189.0, 0.0),
                    child: Text('Create account',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),textAlign: TextAlign.left),
                    ),
                     Icon(Icons.add),
               ],
            ),    
            
            onPressed: (){
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Home_page()),
  );
            },
            ), 
            //)
          
        )
    );
         
      
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
} 