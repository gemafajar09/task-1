import 'package:flutter/material.dart';
import 'package:task1/page/home.dart';

class Login extends StatefulWidget {
  Login({Key key}): super(key: key);
  static const routename = '/login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height /1,
          color: Colors.orangeAccent[400],
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80,bottom:40),
                  alignment: Alignment.center,
                  child: Text('Blogging',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 25.0,),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 40, right:40),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.white),
                        borderRadius: new BorderRadius.circular(5),
                      ),
                      prefixIcon: Icon(Icons.person,color:Colors.white),
                      suffixStyle: const TextStyle(color: Colors.white)),
                    ),
                  ),
                
                Container(
                  margin: EdgeInsets.only(top: 15, left: 40, right:40),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Valid Email",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      prefixIcon: Icon(Icons.alternate_email,
                      color: Colors.white,),
                      suffixStyle: const TextStyle(color: Colors.white)),
                    ),
                  ),
                
                Container(
                  margin: EdgeInsets.only(top: 15, left: 40, right:40),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      prefixIcon: Icon(Icons.lock,
                      color: Colors.white,),
                      suffixStyle: const TextStyle(color: Colors.white)),
                    ),
                  ),
                
                Container(
                  margin: EdgeInsets.only(top: 15, left: 40, right:40),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      prefixIcon: Icon(Icons.lock,
                      color: Colors.white,),
                      suffixStyle: const TextStyle(color: Colors.white)),
                    ),
                  ),

                Container(
                  margin: EdgeInsets.only(top: 15, left: 40, right:40),
                  height: 55.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:Colors.white,
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, Home.routename);
                    },
                    child: Center(
                      child:Text('Sign Up',style:TextStyle(fontSize: 18,color:Colors.blue))
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 60, right:40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Alredy have an account?',style: TextStyle(color:Colors.white, fontSize: 18.0),),
                      InkWell(
                        child: Text('Sign In', style: TextStyle(color:Colors.black,fontSize: 18.0)),
                      )
                    ],
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