import 'package:flutter/material.dart';

class PageSatu extends StatefulWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  State<PageSatu> createState() => _PageSatuState();
}

class _PageSatuState extends State<PageSatu> {
  var imgList = [
    'assets/1_1.png',
    'assets/1_2.png',
    'assets/1_4.png',
    'assets/1_5.png',
    'assets/1_6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Komik #1: Dibalik Si Viral',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
              color: Color(0xff373737),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PageSatu(),
                  ),
                );
                MainAxisAlignment.center;
              },
              child: Row(
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 400,
                    alignment: Alignment.center,
                    // child: Image.asset(image),
                  ),
                ],
              ),
              onLongPress: () {
                print('tapped');
              },
            );
          },
        ),
      ),
    );
  }
}
