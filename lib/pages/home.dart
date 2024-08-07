import 'package:flutter/material.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final formKey = GlobalKey<FormState>();
  var mail = TextEditingController();
  var psk = TextEditingController();
  bool obscuretext = true;
  //static Pattern pattern = '^';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Login',
              style: TextStyle(
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white38
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Form(
            key: formKey ,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white38,
                      fontSize: 40,
                      letterSpacing: 10,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20,),
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
                        hintText:'Password' ,
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
                    print('name $mail_ - password $psk_');
                    if(formKey.currentState!.validate()){
                      final snackBar = SnackBar(content:Text('LOADING'));

                    }
                  },
                    child: Text(
                      'Log-in',
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

                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin' );
                      },
                    child: Text(
                      'Dont have an account?,sign-up',
                      style: TextStyle(
                        fontSize: 20-5,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blueAccent,

                        color: Colors.white38,
                      ),
                    ),

                  ),
                ),

              ],


            ),
          ) ,
          backgroundColor: Colors.grey[900]
      ),
    );
  }
}
