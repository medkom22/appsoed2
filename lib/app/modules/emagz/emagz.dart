import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  int _currentIndex=0;

  @override
  Widget build (BuildContext context){
    return MaterialApp (
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:50, bottom: 30),
            child: Text('E Magz',
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
            ),),
            
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              autoPlay: false,
              onPageChanged: (index, reason) {
                setState(() {
                _currentIndex = index;
                });
              },
            ),
            items: [
              Item1(),
              Item2(),
              Item3(),
              Item4(),
            ],

          ),]
          
        )
      )
    );
  }
}

class Item1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20),
      children: [
        GestureDetector(
          onTap: () => 'lib\app\views\views\faq_view.dart',
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/emagz1.PNG'),
                  fit: BoxFit.fitWidth,
                ),
                border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
              ),
            )    
          ),
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz2.PNG'),
               fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz3.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz4.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
      ],
    );
  }
}

class Item2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
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
              image: DecorationImage(image: AssetImage('assets/emagz5.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          )     
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz2.PNG'),
               fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz2.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz8.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
      ],
    );
  }
}

class Item3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        return GridView(
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
              image: DecorationImage(image: AssetImage('assets/emagz2.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          )     
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz10.PNG'),
               fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz2.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz2.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
      ],
    );

  }
}

class Item4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return GridView(
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
              image: DecorationImage(image: AssetImage('assets/emagz13.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          )     
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz14.PNG'),
               fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/emagz15.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 25,))
            ),
          ) 
        ),
      ],
    );
  }
}