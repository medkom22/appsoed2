import 'package:appsoed/common/navigator.dart';
import 'package:appsoed/presentation/page/menfess_dua.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PageSatu());
}

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BaseMenfess());
  }
}

class BaseMenfess extends StatelessWidget {
  //add const
  const BaseMenfess({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            //NOTE: BACKGROUND COLOR ORANGE
            Container(
              color: const Color(0xffFDB731),
              width: double.infinity,
              height: double.infinity,
            ),

            Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(
                top: 150,
              ),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  const SizedBox(
                    height: 33,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.amber,
                    ),
                    child: OutlinedButton.icon(
                      icon: const Icon(
                        Icons.navigate_next,
                        color: Colors.amber,
                      ),
                      onPressed: () {
                        Navigation.push(const PageDua());
                      },
                      label: const Text(
                        'Kirim menfess',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 60, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 20),
                          child: Text(
                            'Last Update',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: 800,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            // NOTE: END White Background =======
            // NOTE: TOP CONTENT
            Container(
              margin: const EdgeInsets.only(top: 12),
              alignment: Alignment.topCenter,
              child: Column(
                children: const [
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Menfess',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Kirim pesan anonim kepada pengguna Appsoed',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Color(0x00ffffff)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
