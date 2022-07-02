import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text('E-Magz'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          Card(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/emagz1.PNG'),
                  fit: BoxFit.fitWidth,
                ),
                border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 35,))
              ),
            )     
          ),
          Card(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/emagz2.PNG'),
                  fit: BoxFit.fitWidth,
                ),
                border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 35,))
              ),
            ) 
          ),
          Card(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/emagz3.PNG'),
                  fit: BoxFit.fitWidth,
                ),
                border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 35,))
              ),
            ) 
          ),
          Card(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/emagz4.PNG'),
                  fit: BoxFit.fitWidth,
                ),
                border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 35,))
              ),
            ) 
          ),
        ],
      ),
    ),
    );
  }
}