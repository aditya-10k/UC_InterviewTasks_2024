import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : bass()
));

class bass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'basic test',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueAccent[100],
        centerTitle: true,
      ),

      /*body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {  },
              child: Text(
                'OLA',
                style: TextStyle(
                  color: Colors.black,
                  fontSize:25,
                ),
              ) ,
          ),
          Container(
            color: Colors.cyan,
            child: Text(
              'como taye',
              style: TextStyle(
              color: Colors.black,
              fontSize:25,
            ),
            ),
            padding: EdgeInsets.all(1),
          ),
          Text(
              'data',
              style: TextStyle(
              color: Colors.black,
              fontSize:25,
    ),
          ),
          Text(
            'data',
            style: TextStyle(
              color: Colors.black,
              fontSize:25,
            ),
          ),
          Text(
            'data',
            style: TextStyle(
              color: Colors.black,
              fontSize:25,
            ),
          )
        ],

      ),*/
      body: Row(
        children: [
         Expanded(child:Image.network('https://media.tenor.com/Gzb1DJvEObgAAAAM/black-black-man.gif' )),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Text(
                  'UNO',
              style: TextStyle(
                fontSize: 20,
              ),),
              color: Colors.cyan,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Text(
                'UNO',
                style: TextStyle(
                  fontSize: 20,
                ),),
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Text(
                'UNO',
                style: TextStyle(
                  fontSize: 20,
                ),),
              color: Colors.amber,
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.large(
        onPressed: () {  },
        child: Text(
          'ASUS'
        ),

      ),
    );
  }
}
