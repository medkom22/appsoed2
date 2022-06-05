import 'package:appsoed/app/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import '../../provider/launcer_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
          child: SafeArea(
            child: ListView(
              shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Gensoed Merch',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff373737),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                      left: 40,
                      right: 40,
                    ),
                    child: GridView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color(0xffFDB731),
                          ),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/jaket_gensoed.png',
                                width: 162,
                                height: 160,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Jaket Gensoed',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Expanded(
                                child: const Text(
                                  'Rp 130.000',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color(0xffFDB731),
                          ),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/paket_berlima.png',
                                width: 162,
                                height: 160,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Paket ber-5',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Rp 625.000',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color(0xffFDB731),
                          ),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/paket_bertiga.png',
                                width: 162,
                                height: 160,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Paket ber-3',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Rp 380.000',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color(0xffFDB731),
                          ),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/totebag.png',
                                width: 161,
                                height: 160,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Totebag Gensoed',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Rp 30.000',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 6 / 8,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 24,
                    left: 24,
                  ),
                  child: BackButtonWidget(),
                ),
                const SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: const Color(0xffFDB731),
                    ),
                    child: Text('click here'),
                    onPressed: () {
                      LauncherProvider.launcherURL(
                        'https://linktr.ee/gensoed.merch',
                      );
                    }),
              ],
            ),
          ),
        )));
  }
}
