import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PopupDialog(),
    );
  }
}

class PopupDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALert'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Basic Alert'),
              onPressed: ()=> _onBasicAlert(context),
            ),
            RaisedButton(
              child: Text('ALert with Custom Button'),
              onPressed: () => _onCustomButtomAlert(context),
            ),
            RaisedButton(
              child: Text('Alert with Image'),
              onPressed: ()=> _onAlertWithCustomImage(context),
            ),
            RaisedButton(
              child: Text('Alert with custom content'),
              onPressed: ()=> _onAlertWithCustomContent(context),
            ),
          ],
        ),
      ),
    );
  }

  _onBasicAlert(context){
    Alert(
      context: context,
      title: 'Flutter Alert',
        desc: 'Basic Alert in Flutter'
    ).show();
  }


  _onCustomButtomAlert(context){
    Alert(
      context: context,
      title: 'Alert with Button',
      type: AlertType.warning,
      desc: 'Flutter Alert with custom button',
        buttons: [
          DialogButton(
            child: Text('Flat'),
            onPressed: ()=> print('Flat Pressed'),
            color: Colors.lightGreenAccent,
          ),
          DialogButton(
            child: Text('Gradient'),
            onPressed: ()=>print('Gradient pressed'),
            gradient: LinearGradient(colors: [Colors.lightGreenAccent,Colors.limeAccent]),
          )
        ]
    ).show();

  }

  _onAlertWithCustomImage(context){
    Alert(
      context: context,
      title: 'Image',
      desc: 'Alert in flutter with custom Image',
      image: Image.asset('assets/success.png'),
    ).show();
  }

  _onAlertWithCustomContent(context){
    Alert(
      context: context,
      title: 'LOGIN',
      content: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle),
              labelText: 'USername',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          child: Text('Login'),
          onPressed: ()=> print('Logined in'),
        ),
        DialogButton(
          child: Text('Cancel'),
          onPressed: ()=> print('Canceled'),
        )
      ]
    ).show();
  }



}


