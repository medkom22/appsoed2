import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
        theme: ThemeData(  
          primarySwatch: Colors.green,  
        ),  
        home: TitlePage()  
    );  
  }  
}  
class TitlePage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Center(  
          child:Text("E-Magz")  
      ),  
    );  
  }  
}