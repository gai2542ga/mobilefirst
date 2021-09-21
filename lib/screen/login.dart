import 'package:firstmobile/backend/database.dart';
import 'package:firstmobile/config/constant.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email, password;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                width: size.width * 0.9,
                child: TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.alternate_email,
                      color: pColor,
                      size: size.height * 0.05,
                    ),
                    hintText: "Email",
                  ),
                  onSaved: (value) {
                    email = value;
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                width: size.width * 0.9,
                child: TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: pColor,
                        size: size.height * 0.05,
                      ),
                      hintText: "Password",
                    ),
                    onSaved: (value) {
                      password = value;
                    }),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  formKey.currentState!.save();
                  //print("$email $password");
                  var local = LocalDB();
                  local.Login(email, password).then((value) {
                    if (value) {
                      print('success');
                      Navigator.pushNamed(context, 'dashboard');
                    } else {
                      print('fail');
                      final Bar = SnackBar(
                        content: Text('ไม่พบข้อมูล'),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(Bar);
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
