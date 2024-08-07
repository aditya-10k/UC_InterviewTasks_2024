import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lastlog/pages/home.dart';
class Load extends StatefulWidget {


  @override
  State<Load> createState() => _LoadState();
}

class _LoadState extends State<Load> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'loading',
            style: TextStyle(color: Colors.white38),),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Image(image: NetworkImage(
                    'https://media.tenor.com/sV-O8FvCT6UAAAAj/emoji-grin.gif',
                    scale: 0.3,
                  )),
                  SizedBox(width: 3,)
                ],
              ),
              SizedBox(height: 200,),
              Center(
                child: ElevatedButton(onPressed: () {
                 // Navigator.pushNamed(context, '/home');
        FirebaseAuth.instance.signOut().then((value) {
      print("Signed Out");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Home()));
                },);},
                  child:Text(
                    'Log-0ut',
                    style: TextStyle(
                        color: Colors.white38,
                        fontSize: 20
                    ),),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
    );
  }
}
