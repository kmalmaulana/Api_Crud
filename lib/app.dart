import 'package:api_crud/form_add_screen.dart';
import 'package:api_crud/home_screen.dart';
import 'package:flutter/material.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.orangeAccent,
      ),
      home: Scaffold(
        key: _scaffoldState,
        appBar: AppBar(
          title: Text("Api Crud",style: TextStyle(color: Colors.white),),
          actions: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(_scaffoldState.currentContext, MaterialPageRoute(builder: (BuildContext context){
                  return FormAddScreen();
                }));
              },
              child: Padding(padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.add, color: Colors.white,),
              ),
            )
          ],
        ),
        body: HomeScreen(),
      ),
    );
  }
}
