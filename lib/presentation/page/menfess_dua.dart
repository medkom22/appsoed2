import 'package:appsoed/common/navigator.dart';
import 'package:appsoed/presentation/page/menfess_tiga.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PageDua());
}

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Kirim pesan anonimmu',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFDB731),
                ),
              ),
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(10.0),
                children: const <Widget>[
                  TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: 'Dari',
                    ),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Untuk',
                    ),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Pesan',
                    ),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.amber,
                ),
                child: OutlinedButton.icon(
                  icon: const Icon(
                    Icons.back_hand,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigation.push(const PageTiga());
                  },
                  label: const Text(
                    'Submit',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
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
