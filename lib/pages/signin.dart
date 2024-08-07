import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lastlog/pages/load.dart';
class Signin extends StatefulWidget {


  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final formKey = GlobalKey<FormState>();
  var mail = TextEditingController();
  var name = TextEditingController();
  var psk = TextEditingController();
  bool obscuretext = true;
  /*void gerdata() async{
     await Future.delayed( Duration(seconds: 10),() {
      print("go to the moon");
    });

    await Future.delayed( Duration(seconds: 5),() {
      print("carti");
    });
  }*/

  /*int cnt =0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //print('object');
  }*/
  @override
  Widget build(BuildContext context) {
    //print('macarena');
    //gerdata();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title :Text(
            'Sign-up',
            style: TextStyle(
                letterSpacing: 5,
                fontWeight: FontWeight.bold,
                fontSize: 30
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          foregroundColor: Colors.white38,
        ),
        /* body: TextButton(onPressed: () {
            setState(() {
              cnt +=1;
            });
          },
            child: Text('NO OF TIMES $cnt'),
        )*/
        body: Form(
          key: formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create a new account.',
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 2,
                  color: Colors.white38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5,),
              Center(
                child: Container(width:300 ,
                  child: TextFormField(
                    controller: name,
                    style: TextStyle(
                        color: Colors.white38,
                        fontSize: 16
                    ),
                    decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(color: Colors.white38),
                        prefixIcon: Icon(
                          Icons.person_2_outlined,
                          color: Colors.white38,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 2
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.white38,
                          ),
                          borderRadius:BorderRadius.circular(20),

                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Center(child : Container(
                width: 300,
                //color: Colors.white38,
                child: TextFormField(
                    style: TextStyle(
                        color: Colors.white38,
                        fontSize: 16
                    ),
                    controller: mail,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.white38,
                      ),
                      hintText:'Email' ,
                      hintStyle: TextStyle(color: Colors.white38),
                      //focusColor: Colors.cyan,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.blueAccent,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.white38,
                          )
                      ),
                    ),
                    validator: (mail){
                      if(mail!.isEmpty ||!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(mail!)){
                        return'Enter valid E-mail';}
                      else
                        return null;

                    }
                ),
              )
              ),
              SizedBox(height: 10,),
              Center(child : Container(
                width: 300,
                //color: Colors.white38,
                child: TextField(
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 16,
                  ),
                  controller: psk,
                  obscureText: obscuretext,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.white38,
                      ),
                      hintText:'Create a new password' ,
                      hintStyle: TextStyle(color: Colors.white38),
                      suffixIcon: IconButton(
                        onPressed: () { setState(() {
                          obscuretext = !obscuretext;
                        });
                        },
                        icon:  Icon(
                            obscuretext ? Icons.remove_red_eye :Icons.visibility_off),
                      ),
                      //focusColor: Colors.cyan,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.blueAccent,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.white38,
                          )
                      )
                  ),

                ),
              )
              ),
              SizedBox(height: 10,),
              Center(
                child: ElevatedButton(onPressed: () {
                  String mail_ = mail.text;
                  String psk_ = psk.text;
                  String name_ = name.text;
                  print('Account Created Successfully!'
                      'NAME : $name_'
                      'MAIL ID : $mail_'
                      'PASSWORD : $psk_');

                  if(formKey.currentState!.validate()) {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                        email: mail.text,
                        password: psk.text)
                        .then((value) {
                      print('inside');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Load()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  }
                },
                  child: Text(
                    'Sign-up',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
    );
  }
}


