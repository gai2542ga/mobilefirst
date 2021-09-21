import 'package:firstmobile/config/constant.dart';
import 'package:firstmobile/screen/login.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        //color: Colors.blue,
        child: ListView(
          children: [
            Image.asset(
              "asset/image/logo.png",
              width: size.width * 0.2,
              height: size.height * 0.2,
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "Welcom to KMUTNB",
              style: TextStyle(
                fontSize: 32,
                color: Colors.deepOrangeAccent,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            Image(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/7e/9c/f6/7e9cf66b1907ee0e79e8aa4e9c420081.jpg'),
            ),
            SizedBox(height: size.height * 0.02),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  primary: pColor,
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              onPressed: () {
                print("LOGIN");
                Navigator.pushNamed(context, 'login');
              },
              child: Text("Login"),
            ),
            SizedBox(height: size.height * 0.02),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  primary: pColor,
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              onPressed: () {
                print("Register");
                Navigator.pushNamed(context, 'register');
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
