import 'package:appsoed/app/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              const SizedBox(
                height: 24,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24, left: 24),
                child: BackButtonWidget(),
              ),
              const Center(
                child: Text(
                  'Rules Media Partner BEM Unsoed 2022',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/medpart.png',
                width: 230,
                height: 262,
                fit: BoxFit.contain,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 20,
                  left: 20,
                ),
                child: Text(
                  'Syarat dan Ketentuan : ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 20,
                  left: 20,
                ),
                child: Text(
                  'Pihak pemohon kerja sama wajib memenuhi prosedur dan ketentuan media partner yang telah ditetapkan oleh BEM Unsoed.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ),
              const Divider(
                color: Color(0xff373737),
                indent: 20,
                endIndent: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  right: 20,
                  left: 20,
                ),
                child: Text(
                  'BEM Unsoed tidak menerima iklan yang mengandung unsur politik, pornografi, judi, penipuan, dan SARA.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const Divider(
                color: Color(0xff373737),
                indent: 20,
                endIndent: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  right: 20,
                  left: 20,
                ),
                child: Text(
                  'BEM Unsoed akan memproses publikasi apabila persyaratan sudah lengkap.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const Divider(
                color: Color(0xff373737),
                indent: 20,
                endIndent: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  right: 20,
                  left: 20,
                ),
                child: Text(
                  'Pihak eksternal (BEM/HIMA/Organisasi/Instansi di luar Unsoed) wajib membayar fee.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const Divider(
                color: Color(0xff373737),
                indent: 20,
                endIndent: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  right: 20,
                  left: 20,
                ),
                child: Text(
                  'Informasi lebih lanjut dapat menghubungi CP Kementerian Luar Negeri BEM UNSOED 2022 melalui WhatsApp 081393639060 (Zhafira).',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
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
