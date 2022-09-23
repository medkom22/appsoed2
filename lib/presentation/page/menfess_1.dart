import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(PageSatu());
}

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BaseMenfess());
  }
}

class BaseMenfess extends StatelessWidget {
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
              width: Get.width,
              height: 200,
            ),
            Container(
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
                    height: 20,
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
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFFFFFF)),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  // Image.asset(
                  //   'assets/phone.png',
                  //   width: 230,
                  //   height: 262,
                  //   fit: BoxFit.contain,
                  // ),
                  // const SizedBox(
                  //   height: 24,
                  // ),
                  // const Text(
                  //   'Kirim pesan anonim kepada pengguna Appsoed',
                  //   style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
