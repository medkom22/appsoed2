import 'package:flutter/material.dart';

class InputPengeluaran extends StatefulWidget {
  @override
  _InputPengeluaranState createState() => _InputPengeluaranState();
}

class _InputPengeluaranState extends State<InputPengeluaran> {
  final String _kategoriPengeluaran = '';
  final String _kategoriPengeluaranResult = '';
  final formkey = GlobalKey<FormState>();
  final dateController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            //NOTE: BACKGROUND COLOR
            Container(
              color: const Color(0x0fffffff),
              width: double.infinity,
              height: 200,
            ),

            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(
                top: 100,
              ),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  //JUMLAH PENGELUARAN
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 60, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 0, 20),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Jumlah',
                                labelStyle: TextStyle(color: Colors.black54),
                                hintText: 'Rp',
                                icon:
                                    Icon(Icons.money, color: Color(0xffFDB731)),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  //END OF JUMLAH PENGELUARAN

                  //DROPDOWN KATEGORI

                  //EDIT TANGGAL PENGELUARAN
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: TextFormField(
                      readOnly: true,
                      decoration: const InputDecoration(
                        labelText: 'Tanggal',
                        labelStyle: TextStyle(color: Colors.black54),
                        hintText: 'Pilih Tanggal',
                        icon:
                            Icon(Icons.edit_calendar, color: Color(0xffFDB731)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffFDB731),
                        ),
                      ),
                      onTap: () async {
                        var date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                        dateController.text = date.toString().substring(0, 10);
                      },
                    ),
                  ),
                  //END OF EDIT TANGGAL PENGELUARAN

                  //EDIT NOTE PENGELUARAN
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Note',
                          labelStyle: TextStyle(color: Colors.black54),
                          hintText: '(Opsional)',
                          icon: Icon(Icons.notes, color: Color(0xffFDB731)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54))),
                    ),
                  ),
                  //END OF EDIT NOTE PENGELUARAN

                  //BUTTON SIMPAN
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFDB731),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text('Simpan'),
                    ),
                  ),
                ],
                //END OF BUTTON SIMPAN
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
                  color: Colors.black,
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
