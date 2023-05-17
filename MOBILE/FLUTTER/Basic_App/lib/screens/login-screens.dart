import 'dart:developer';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}
class LoginState extends State<LoginScreen> {
final _formkey = GlobalKey<FormState>();
late String _email;
late String _password;

void submit(){
  log(_email);
  log(_password);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Form(
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(17),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'hello@nacer.ma'
                  ),
                  onSaved: (value){
                    _email = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: '123456'
                  ),
                  onSaved: (value){
                    _password = value!;
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("login"),
                    onPressed: (){
                      _formkey.currentState?.save();
                      submit();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}