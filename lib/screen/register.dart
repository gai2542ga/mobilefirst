import 'package:firstmobile/backend/database.dart';
import 'package:firstmobile/config/constant.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Register'),
          ),
          body: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  txtName(),
                  txtSName(),
                  txtEmail(),
                  txtPassword(),
                  btnSubmit(),
                ],
              ),
            ),
          )),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        style: TextStyle(
          color: pColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
            labelText: "Name:",
            icon: Icon(Icons.add_reaction),
            hintText: 'Input your name'),
        validator: (val) {
          if (val!.length < 6) {
            return 'กรุณากรอกข้อมูลมากกว่า 6 ตัวอักษร';
          }
        },
        onSaved: (val) {
          name = val;
        },
      ),
    );
  }

  Widget txtSName() {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        style: TextStyle(
          color: pColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
            labelText: "Last Name:",
            icon: Icon(Icons.add_circle),
            hintText: 'Input your last name'),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอกข้อมูล';
          } else if (value.length < 3) {
            return 'กรุณากรอกข้อมูลมากกว่า 3 ตัว';
          }
        },onSaved: (value){
          surname=value;
        },
      ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        style: TextStyle(
          color: pColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
            labelText: "Email:",
            icon: Icon(Icons.email),
            hintText: 'Input your email'),
        validator: (value) {
          if (!(value!.contains('@'))) {
            return 'กรุณากรอกข้อมูลตามรูปแบบ Email';
          } else if (!(value.contains('.'))) {
            return 'กรุณากรอกข้อมูลมากกว่า 3 ตัว';
          }
        },
        keyboardType: TextInputType.emailAddress,
        onSaved: (value){
          email=value;
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        style: TextStyle(
          color: pColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
            labelText: "Password:",
            icon: Icon(Icons.password),
            hintText: 'Input your password'),
        obscureText: true,
        onSaved: (value){
          password=value;
        },
      ),
    );
  }

  Widget btnSubmit() {
    return ElevatedButton(
      child: Text('Submit'),
      onPressed: () {
        if (formkey.currentState!.validate()) {
          formkey.currentState!.save();
          var local = LocalDB();
          local.Register(name, surname, email, password);
          Navigator.pushNamed(context, 'login');
        }
        
      },
    );
  }
}
