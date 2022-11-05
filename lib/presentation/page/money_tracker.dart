import 'package:flutter/material.dart';
import 'package:appsoed/presentation/page/tambah_pengeluaran.dart';

class Pengeluaran extends StatefulWidget {
  @override
  _PengeluaranState createState() => _PengeluaranState();
}

class _PengeluaranState extends State<Pengeluaran>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            //NOTE: BACKGROUND COLOR ORANGE AND YELLOW
            Container(
              color: const Color(0xffFDB731),
              width: double.infinity,
              height: 200,
            ),
            Positioned(
              right: -(double.infinity * 7 / 8) / 3,
              top: -(double.infinity * 7 / 8),
              child: Container(
                width: double.infinity * 7 / 8,
                height: double.infinity * 7 / 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xffFFFA78).withOpacity(0.54),
                ),
              ),
            ),
            // NOTE: END ====

            // NOTE: white background containing content
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
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFFA000),
                                      borderRadius: BorderRadius.circular(23.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: const Offset(0, 2),
                                        )
                                      ]),
                                  child: TabBar(
                                    controller: _tabController,
                                    indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      color: const Color(0xffFFFFFF),
                                    ),
                                    labelColor: const Color(0xffFFA000),
                                    unselectedLabelColor:
                                        const Color(0xffFFFFFF),
                                    tabs: const [
                                      Tab(
                                        text: 'Pengeluaran',
                                      ),
                                      Tab(
                                        text: 'Pemasukan',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 20),
                          child: Text(
                            '28 Aug 2022',
                          ),
                        ),
                        Align(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 10, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Belanja'),
                                Text('-Rp50.000')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text('Note'),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                  ),
                  const Divider(
                    color: Color(0xffC4C4C4), //color of divider
                    height: 2, //height spacing of divider
                    thickness: 2, //thickness of divier line
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context, MaterialPageRoute(builder: (context) => InputPengeluaran()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFDB731),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text('Tambah Catatan')
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
              child: const Text(
                'Money Tracker',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            /*const Padding(
               padding: EdgeInsets.only(top: 24, left: 24),
               child: BackButtonWidget(),
             ),*/
            // NOTE: END TOP CONTENT ==========
          ],
        ),
      ),
    );
  }
}
