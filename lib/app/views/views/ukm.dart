import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class UKMView extends StatefulWidget {
  @override
  State<UKMView> createState() => _UKMViewState();
}

class _UKMViewState extends State<UKMView> {
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];

    final List<Widget> images = [
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/umaka.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'UMAKA',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Unit Kegiatan Mahasiswa Katolik',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UMAKA adalah unit kegiatan mahasiswa yang bergerak di bidang kerohanian yang mewadahi mahasiswa katolik yang ada di Unsoed.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      //===============================================UMAKA===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/sef.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'SEF',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Student English Forum',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "SEF adalah unit kegiatan mahasiswa yang bergerak di bidang pengembangan skill dan talent bahasa inggris dan merupakan English Club tingkat universitas.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      //===============================================SEF===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/ukki.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'UKKI',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Unit Kegiatan Kerohanian Islam',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UKKI adalah unit kegiatan mahasiswa yang bergerak di bidang dakwah islam yang memiliki pengaruh di lingkungan Lembaga Dakwah Kampus (LDK) Unsoed dan LDK lainnya di Purwokerto.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      //===============================================UMAKA===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/srt.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'SRT',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Soedirman Robotic Team',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "SRT adalah unit kegiatan mahasiswa yang bergerak  dalam penelitian ilmu bidang robotika dan pengembangan organisasi dan tim robotika yang ada di Unsoed.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      //===============================================SRT===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/bkc.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'BKC',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Bandung Karate Club',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "BKC didirikan dengan maksud menghimpun pemuda, pelajar serta berbagai kalangan dalam pembinaan olah raga beladiri berdasarkan kekeluargaan hormat-menghormati serta saling mencintai antara satu dan sesamanya.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      //===============================================BKC===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/usman.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'USMAN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Perkumpulan Mahasiswa Peduli Kesenian Musik Islami Rebana dan Seni Tilawah',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "USMAN berdiri secara resmi pada tanggal 5 Februari 2017. Bidang kesenian yang terdapat pada UKM USMAN diantaranya Tahfidz dan Tafsir, Sholawat, Kaligrafi, Tilawah, dan Saman.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //===============================================USMAN===============================================

      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/seigokan.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'SEIGOKAN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UKM Karate Seigokan Unsoed merupakan UKM tingkat universitas yang bergerak dalam bidang olahraga. Selain bidang olahraga yang bisa meningkatkan prestasi, UKM Karate Seigokan Unsoed juga fokus dalam bidang organisasi sehingga dapat menambah relasi bagi anggota.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //===============================================SEIGOKAN===============================================

      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/taekwondo.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'TAEKWONDO',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UKM Taekwondo merupakan salah satu UKM tingkat universitas yang bergerak dalam bidang olahraga bela diri dan sudah meraih banyak prestasi.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //===============================================UMAKA===============================================

      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/voli.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'BOLA VOLI',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UKM Bola Voli Unsoed merupakan UKM olahraga cabang olahraga Bola Voli di tingkat universitas yang menjadi wadah bagi para atlet Bola Voli di tiap fakultas untuk berkumpul dan berlatih, selain itu UKM Bola Voli juga wadah untuk para mahasiswa mengembangkan kemampuan berorganisasi.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //===============================================VOLI===============================================

      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/bultangkis.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'BULUTANGKIS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UKM Bulu Tangkis Unsoed merupakan UKM tingkat universitas yang bergerak dalam bidang olahraga yang sudah meraih banyak prestasi.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //============================================== BULU TANGKIS ===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/gbs.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'PSM GBS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Paduan Suara Mahasiswa Gita Buana Soedirman',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 5,
              ),
              child: const Text(
                "UKM di tingkat universitas yang bergerak di bidang seni olah vokal khususnya paduan suara yang memiliki tujuan menggali dan mengembangkan minat, bakat, dan potensi mahasiswa di bidang seni olah vokal khususnya paduan suara.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //=============================================== PSM GBS ===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/racana.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'RACANA',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "Racana Soedirman Gugusdepan Bms. 26-1953-26-1954 adalah Unit Kegiatan Mahasiswa (UKM) Pramuka yang berpangkalan di Universitas Jenderal Soedirman. Racana Soedirman diresmikan pada 7 Juni 1980 oleh Kak Pramoe Soetomo dengan 10 orang kader Pramuka dari mahasiswa sebagai pengurus.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //=============================================== RACANA ===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/psht.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'PSHT',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Persaudaraan Setia Hati Terate',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "PSHT merupakan organisasi yang mewadahi kegiatan dalam bidang seni beladiri pencak silat dan bidang budi pekerti atau kerohanian. PSHT membantu upaya pemerintah dalam mencerdaskan kehidupan bangsa.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //=============================================== PSTHT ===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/pmi.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'KSRPMI',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              ' Palang Merah Indonesia',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "KSR PMI merupakan Unit Kegiatan Mahasiswa yang ada di Unsoed yang bergerak di bidang kepalangmerahan dan kemanusiaan yang berada di bawah naungan Palang Merah Indonesia.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //=============================================== KSR PMI ===============================================

      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/merpatiputih.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'MERPATI PUTIH',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "Merpati Putih Kolat Unsoed merupakan kelompok Latihan bela diri yang memfasilitasi mahasiswa maupun masyarakat umum untuk mengembangkan minat dan bakat dalam ilmu beladiri pencak silat khususnya melalui keilmuan Merpati Putih.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //=============================================== MERPATI PUTIH==============================================

      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/menwa.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'MENWA',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Resimen Mahasiswa',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "Resimen Mahasiswa 904/Kalayudha merupakan wadah penyaluran potensi mahasiswa khususnya pada bidang bela. Kegiatan yang dilakukan oleh anggota Menwa seperti latihan menembak, mounteneering, paskibra, dan Search and Rescue (SAR).",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //=============================================== MENWA ===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/ubb.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'UBB',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'UKM BOLA BASKET UNSOED',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UBB adalah UKM yang bergerak dalam bidang keolahragaan khususnya bola basket, sebagai wadah bagi para mahasiswa yang memiliki minat lebih ke bola basket baik yang berkeinginan menjadi atlet atau menjadi pengurus UBB.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //=============================================== UBB ===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/pmkp.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 170,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'PMKP',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Persekutuan Mahasiswa Kristen Protestan Unsoed',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "Wadah mahasiswa Kristen Unsoed yang merasa terpanggil untuk melayani dan mewujudkan ilmu dalam kesatuan gerak dan langkah bersama untuk menciptakan dan membangun kampus yang dinamis dan sesuai dengan Tri Dharma Perguruan Tinggi.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //=============================================== PMKP ===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/sketsa.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'LPM SKETSA',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Lembaga Pers Mahasiswa',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "LPM Sketsa  berusaha tetap sejalan dengan tujuannya menjadi pemandu wawasan almamater. Dalam menumbuhkan budaya kritis, intelektual, dan rasa humanisme pada mahasiwa, LPM Sketsa  berusaha untuk menghasilkan produk jurnalistik berkualitas.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //=============================================== SKETSA ===============================================

      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/uplmpa.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'UPL MPA',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Unit Pandu Lingkungan Mahasiswa pecinta Alam',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UKM tingkat universitas yang bergerak dalam bidang kepecintaalaman, petualangan alam bebas, dan pelestarian lingkan. Memiliki 7 divisi diantaranya: Gunung, Hutan, Panjat Tebing, Susur Gua,Arung Jeram, Rawa Laut, Konservasi, Selam.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //===============================================UPL MPA==============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/catur.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'CATUR',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UKM Catur berfokus pada pembelajaran dan mengembangkan softskill organisasi yang diharapkan menjadi tempat untuk menggali skill yang terpendam. Mahasiswa tidak harus bisa atau mahir dalam keanggotaan disini orang awam yang belum bisa Catur akan dibimbing dan belajar bersama sampai bisa.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //=============================================== CATUR ===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/panjattebing.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'PANJAT TEBING',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UKM olahraga panjat tebing yang bergerak di bidang prestasi, berada di PKM Unsoed yang diresmikan pada 17 Januari 2019.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //===============================================PANJAT TEBING===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/marchingband.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'MARCHING BAND',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "Marching Band Bahana Putra Soedirman adalah UKM yang menggabungkan seni, musik, tari dan olahraga.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      //===============================================MACHING BAND===============================================
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/ukmpr.png",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'UKMPR',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'UKM Penalaran dan Riset',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "UKM tingkat universitas yang bergerak di bidang Penalaran dan Riset. UKMPR berfokus pada kegiatan Keilmiahan di Universitas Jenderal Soedirman.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const AssetImage(
                    "assets/kempo.jpg",
                  ),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'KEMPO',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color(0xff373737),
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const Text(
                "Kempo merupakan salah satu unit kegiatan mahasiswa bela diri yang ada di Universitas Jenderal Soedirman, bersekretariat di Pusat Kegiatan Mahasiswa Unsoed.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF373737),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Info UKM',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Card(
                child: VerticalCardPager(
                  titles: titles, // required
                  images: images,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ), // optional
                  onPageChanged: (page) {
                    // optional
                  },
                  onSelectedItem: (index) {
                    // optional
                  },
                  initialPage: 0, // optional
                  align: ALIGN.CENTER, // optional
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
