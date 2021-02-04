import 'package:flutter/material.dart';
import 'package:task1/page/home.dart';

class Forminput extends StatefulWidget {
  Forminput({Key key}): super(key: key);
  static const routename = '/forminput';
  @override
  _ForminputState createState() => _ForminputState();
}

class _ForminputState extends State<Forminput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        leading: BackButton(
          onPressed: (){
          Navigator.pushReplacementNamed(context, Home.routename);
          }, 
        color: Colors.black,),
        title: Text("Create a post", style: TextStyle(color: Colors.black)),
      ),
      // body
      body: SingleChildScrollView(
              child: Container(
          height: MediaQuery.of(context).size.height / 1,
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What Is Flutter ?",
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              // textarea
              Container(
                 margin: EdgeInsets.only(top:10),
                child: TextField(
                  maxLines: 23,
                  decoration: InputDecoration(
                    hintText: "What Is Flutter ?",
                    border: OutlineInputBorder(),
                    
                  ),
                ),
              ),
              // button
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 1,
                margin: EdgeInsets.only(top:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orange[400],
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: Text('Publish',style:TextStyle(color:Colors.white, fontSize: 20)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}