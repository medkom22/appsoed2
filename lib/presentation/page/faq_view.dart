import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class FaqView extends GetView {
  const FaqView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text(
                'FAQ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/image-faq.png',
              width: 220,
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Frequently Asked Questions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const GFAccordion(
              collapsedIcon: Icon(
                FontAwesomeIcons.plus,
                color: Color(0xffFDB731),
              ),
              title:
                  'Pengisian UKT pake gaji kotor atau gaji bersih ya kak?. Bedanya apa yah kak?',
              content:
                  'Kalau di Unsoed sih pakenya gaji kotor. Gaji kotor itu jumlah gaji orang tua yang belum di potong kebutuhan apapun baik itu tanggungan hutang, tanggungan biaya sewa, ataupun kebutuhan lainnya. ',
            ),
            const GFAccordion(
              collapsedIcon: Icon(
                FontAwesomeIcons.plus,
                color: Color(0xffFDB731),
              ),
              title: 'Kak rumah saya ngontrak jadi gak punya PBB, itu gimana ?',
              content:
                  'Bisa pinjem ke pemilik rumah ya, karena harus di upload pada saat pendaftaran.',
            ),
            const GFAccordion(
              collapsedIcon: Icon(
                FontAwesomeIcons.plus,
                color: Color(0xffFDB731),
              ),
              title:
                  'kak, orangtua saya gajinya gak tentu dan tidak ada slip gaji. Terus itu gimana ya kak?',
              content:
                  'Kalo orangtua kamu tidak memiliki gaji tetap, lihat pendapatan orangtua 3 bulan terakhir, lalu dibuat rata-rata, setelah itu minta surat keterangan gaji ke RT/RW lalu setelah itu membuat surat pernyataan bahwa yang bersangkutan memiliki pendapatan sekian dengan tanda tangan diatas materai. Kemudian dibawa ke kelurahan',
            ),
            const GFAccordion(
              collapsedIcon: Icon(
                FontAwesomeIcons.plus,
                color: Color(0xffFDB731),
              ),
              title:
                  'Kak, kalo rekening airnya gabung sama rekening listrik sih gimana?',
              content: 'Pakai rekening listrik saja',
            ),
            const GFAccordion(
              collapsedIcon: Icon(
                FontAwesomeIcons.plus,
                color: Color(0xffFDB731),
              ),
              title: 'Kak berkas-berkas bidikmisi yang harus disiapin apa aja?',
              content:
                  'Berkas yang disediain sama kaya yang lain seperti slip gaji/surat keterangan gaji orang tua, foto kopi kartu keluarga, fotokopi PBB, Struk listrik terakhir dan sebagainya. Namun ada tambahan menyiapkan surat keterangan tidak mampu yang dikeluarkan oleh kelurahan desa masing-masing serta melampikan surat keterangan calon penerima beasiswa bidikmisi yang di dapat setelah melakukan finalisasi data pada website bidikmisi',
            ),
            const GFAccordion(
              title: 'Kak, apakah pembayaran UKT bisa dicicil?',
              content: 'Pembayaran UKT tidak bisa dicicil',
              collapsedIcon: Icon(
                FontAwesomeIcons.plus,
                color: Color(0xffFDB731),
              ),
            ),
            const SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
