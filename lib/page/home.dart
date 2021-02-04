import 'package:flutter/material.dart';

import 'forminput.dart';

class Home extends StatefulWidget {
  Home({Key key}): super(key: key);
  static const routename = '/home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        leading: IconButton(icon: Icon(Icons.menu, color: Colors.black,), onPressed: (){}),
        title: Text('Gema fajar',style:TextStyle(color: Colors.black)),
      ),
      body: content(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, Forminput.routename);
        },
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.grey,
      ),
    );
  }

  Widget content(){
    return Container(
      child: ListView(
        children: [
          // list 1
          Card(
            child: Row(
              children: [
                // avatar row kiri
                Container(
                  margin: EdgeInsets.only(left: 5),
                  width: MediaQuery.of(context).size.width / 6,
                  child: CircleAvatar(
                    backgroundColor: Colors.brown,
                    maxRadius: 40,
                    child: Text('A',style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,

                    )),
                  ),
                ),
                // content row kanan
                Container(
                  margin: EdgeInsets.only(left:10),
                  height: 100,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Column(
                    children: [
                      // title
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width /2,
                              child: Text("Apa Itu Dart ?",
                                style:TextStyle(
                                fontWeight: FontWeight.bold, 
                                fontSize: 18.0),
                                ),
                            ),
                            // tanggal
                            Container(
                              margin: EdgeInsets.only(top:10),
                              child: Text("Jan 26, 2021",
                                style:TextStyle( 
                                fontSize: 15.0),
                                ),
                            ),
                          ],
                        ),
                      ),
                      // content
                      Container(
                        child: Text("Dart adalah sebuah bahasa pemrograman yang dikembangkan oleh Google dan digunakan untuk membangun aplikasi mobile, desktop,..."),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          
          // list 2
          Card(
            child: Row(
              children: [
                // avatar row kiri
                Container(
                  margin: EdgeInsets.only(left: 5),
                  width: MediaQuery.of(context).size.width / 6,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    maxRadius: 40,
                    child: Text('A',style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,

                    )),
                  ),
                ),
                // content row kanan
                Container(
                  margin: EdgeInsets.only(left:10),
                  height: 100,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Column(
                    children: [
                      // title
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width /2,
                              child: Text("Apa Itu Dart ?",
                                style:TextStyle(
                                fontWeight: FontWeight.bold, 
                                fontSize: 18.0),
                                ),
                            ),
                            // tanggal
                            Container(
                              margin: EdgeInsets.only(top:10),
                              child: Text("Jan 26, 2021",
                                style:TextStyle( 
                                fontSize: 15.0),
                                ),
                            ),
                          ],
                        ),
                      ),
                      // content
                      Container(
                        child: Text("Dart adalah sebuah bahasa pemrograman yang dikembangkan oleh Google dan digunakan untuk membangun aplikasi mobile, desktop,..."),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
          
        ],
      ),
    );
  }
}