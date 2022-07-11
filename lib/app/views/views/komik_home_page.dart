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
        title: const Text('Komik'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: imgList
              .map(
                (e) => Container(
                  height: 300,
                  margin: const EdgeInsets.only(
                    top: 24,
                    left: 16,
                    right: 16,
                    bottom: 30,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(e),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),

      // body: Center(
      //   child: ListView.builder(
      //     shrinkWrap: true,
      //     itemCount: imgList.length,
      //     itemBuilder: (context, index) {
      //       return GestureDetector(
      //         onTap: () {
      //           Navigator.of(context).push(
      //               MaterialPageRoute(builder: (context) => const PageSatu()));
      //           MainAxisAlignment.center;
      //         },
      //         child: Row(
      //           children: <Widget>[
      //             Container(
      //               width: 300,
      //               height: 300,
      //               alignment: Alignment.center,
      //               child: Image.asset(imgList[index]),
      //             ),
      //           ],
      //         ),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
