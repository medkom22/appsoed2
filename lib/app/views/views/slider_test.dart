import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex=0;

  List cardList=[
    Item1(),
    Item2(),
    Item3(),
    Item4()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Card Carousel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:Text("E-Magz")
        ),
        body: Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card){
                return Builder(
                  builder:(BuildContext context){
                    return Container(
                      height: MediaQuery.of(context).size.height*0.30,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.blueAccent,
                        child: card,
                      ),
                    );
                  }
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(cardList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
                  ),
                );
              }),
            ),
          ],
        )
      ),
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
              image: DecorationImage(image: AssetImage('assets/emagz2.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 35,))
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
              image: DecorationImage(image: AssetImage('assets/emagz2.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 35,))
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
              image: DecorationImage(image: AssetImage('assets/emagz2.PNG'),
                fit: BoxFit.fitWidth,
              ),
              border: Border(bottom: BorderSide(color: Color(0xFFFEDB57), width: 35,))
            ),
          ) 
        ),
      ],
    );
  }
}