import 'package:appsoed/app/views/views/komik_page_1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imgList = [
    'assets/cover1.png',
    'assets/cover2.png',
    'assets/cover3.png',
    'assets/cover4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Komik',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Color(0xff373737),
            ),
            textAlign: TextAlign.center,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Center(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: imgList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PageSatu()));
                        MainAxisAlignment.center;
                      },
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 300,
                            height: 300,
                            child: Image.asset(imgList[index]),
                            alignment: Alignment.center,
                          ),
                        ],
                      ));
                })));
  }
}
