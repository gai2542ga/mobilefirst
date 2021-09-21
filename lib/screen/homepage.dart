import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('CED'),
          ),
          body: Container(
            color: Colors.orangeAccent,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Stack(
              children: [
                Positioned(
                  top:20,
                  right: 20,
                  child: Text(
                    'Data1',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                Positioned(
                  left:20,
                  bottom : 20,
                  child: Text(
                    'Data2',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                Positioned(
                  top:20,
                  left: 20,
                  child: Text(
                    'Data3',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
    ;
  }
}
