import 'package:flutter/material.dart';

void main() {
  runApp(EmagzView());
}

class EmagzView extends StatefulWidget {
  const EmagzView({Key? key}) : super(key: key);
  @override
  State<EmagzView> createState() => _EmagzViewState();
}

class _EmagzViewState extends State<EmagzView> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tampilan Awal Emagz',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:Text("E-Magz")
        ),
      body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 24,
                left: 16,
                right: 16,
                bottom: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'E-Magz',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/comingsoon.png',
              height: 300,
              width: double.infinity - (24 * 2),
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Laman masih dalam perbaikan. Ditunggu ya!!',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}