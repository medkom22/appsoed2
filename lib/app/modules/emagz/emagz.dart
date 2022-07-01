import 'dart:html';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }  
  
class MyApp extends StatelessWidget{
  final List<Container> myList = List.generate(
    90, 
    (index) {
      return Container(
        color: Color(0xFFFEDB57),
      );
    },
  );
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              const SizedBox(
                height: 24,
              ),
              const Center(
                child: Text(
                  'E-Magz',
                    style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    ),
                ),
              ),
            ],
          ),
       ),
      ), 
    );      
  }
}


