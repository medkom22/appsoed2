class FakultasModel {
  String? title;
  String? description;
  String? imageLocation;
  List? gallery;
  //create constructor
  FakultasModel({
    required this.title,
    required this.description,
    required this.imageLocation,
    required this.gallery,
  });
}

//TODO : Ganti Image location dan gallery di tiap2 fakultas
List<FakultasModel> dataFakultas = [
  FakultasModel(
    title: 'Fakultas Pertanian',
    description:
        'Fakultas Pertanian Universitas Jenderal Soedirman (UNSOED) merupakan salah satu lembaga pendidikan tinggi negeri yang terletak di Purwokerto, Propinsi Jawa Tengah. Lembaga pendidikan tinggi di ibukota Kabupaten Banyumas merupakan fakultas tertua dan terbanyak memiliki program studi. Pada saat ini terdapat 4 jurusan dengan 8 program studi S1, 3 program D3, 2 program alih jenjang dan 1 program S2. Sesuai dengan SK Mendiknas No. 045/U/2002 maka Fakultas Pertanian UNSOED menerapkan kurikulum berbasis kompetensi. Penerapan kurikulum tersebut menuntut ketersediaan sumberdaya manusia, sarana dan prasarana dan berbagai fasilitas penunjang yang memadai, baik secara kuantitatif maupun kualitatif. Berdasarkan kurikulum yang berlaku, diharapkan mahasiswa dapat menyelesaikan studinya dalam waktu 4 tahun untuk program S1, 3 tahun untuk program D3, 2 tahun untuk program alih jenjang dan program S2.',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas Biologi',
    description:
        'Fakultas Biologi Universitas Jenderal Soedirman berdiri pada tanggal 23 November 1963. Pada awalnya, fakultas ini terdiri atas tiga jurusan, yaitu Botani, Zoologi, dan Biologi Umum. Pada tahun 1985, jurusan Biologi Umum diubah menjadi Biologi Lingkungan. Selanjutnya, pada tahun 1999, ketiga jurusan tersebut ditiadakan, sehingga fakultas ini hanya memiliki satu program studi yakni Biologi.',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas Ekonomi dan Bisnis',
    description:
        'Fakultas Ekonomi Universitas Jenderal Soedirman (UNSOED) berdiri dengan SK Menteri Perguruan Tinggi dan Ilmu Pengetahuan (PTIP) No. 127 Tahun 1963 tanggal 9 Oktober 1963. Pada waktu itu Fakultas Ekonomi UNSOED masih menempati gedung Balai Desa Purwokerto Lor dan gedung Kesenian. Jurusan yang ada barulah Ekonomi Perusahaan dan Ekonomi Pertanian dan sebagian besar tenaga pengajar dari Universitas Gajah Mada (UGM) Yogyakarta.',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas Hukum',
    description:
        'Fakultas Hukum Universitas Jenderal Soedirman atau FH Unsoed adalah sebuah fakultas dalam rumpun ilmu sosial dan humaniora (soshum) yang berada dalam Universitas Jenderal Soedirman. Saat ini, FH Unsoed menyelenggarakan studi ilmu hukum dalam beberapa jenjang, di antaranya dua program studi sarjana (S-1), dua program studi magister (S-2), dan satu program studi doktoral (S-3).',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas Ilmu Sosial dan Ilmu Politik',
    description:
        'Fakultas Ilmu Sosial dan Ilmu Politik Universitas Jenderal Soedirman atau FISIP Unsoed adalah sebuah fakultas yang tergabung dalam rumpun ilmu sosial dan humaniora (soshum) di Universitas Jenderal Soedirman. Saat ini FISIP Unsoed menyediakan beragam program studi pada disiplin ilmu sosial dan ilmu politik, di antaranya, yakni enam program studi sarjana (S-1) dan empat program studi magister (S-2) .',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas Kedokteran',
    description:
        'Fakultas Kedokteran Universitas Jenderal Soedirman atau FK Unsoed adalah sebuah fakultas yang tergabung dalam rumpun ilmu sains dan teknologi (saintek) di Universitas Jenderal Soedirman. Saat ini, FK Unsoed menyelenggarakan beragam program studi dalam disiplin ilmu kedokteran, di antaranya dua program studi sarjana (S-1), dua program studi profesi dokter, dan satu program studi dokter spesialis.',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas Teknik',
    description:
        'Fakultas Teknik terdiri dari 5 (lima) jurusan/program studi yaitu Jurusan Teknik Sipil, Jurusan Teknik Elektro, Jurusan Teknik Geologi, Jurusan Informatika, dan Jurusan Teknik Industri.Kampus Fakultas Teknik terletak di Kampus Unsoed Blater, Jalan Mayor Jenderal Sungkono Km. 05, Kalimanah, Purbalingga, Jawa Tengah. Luas Kampus Teknik Blater sekitar 11 (sebelas) hektar dan sampai dengan tahun 2016 sudah berdiri sebanyak 5 (lima) buah gedung, yaitu gedung A, B, C, D dan E.',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas Ilmu-Ilmu Kesehatan',
    description:
        'Bertempat di Gedung A (Jurusan Keperawatan sekarang).  Tanggal 9 Oktober 2006 FKIK di kukuhkan sebagai salah satu fakultas di Unsoed  dengan SK Dirjen Dikti No. 3833/D/T/2006 dan SK Rektor Unsoed No. 122/H23/OT/2007 kemudian menempati gedung D sebagai gedung dekanat, sebelum akhirnya menempati gedung baru FKIK di kompleks RS. Margono Soekardjo. Selanjutnya, mengacu pada Rencana strategis Unsoed,  tahun 2014 melalui SK Rektor Unsoed No. 1600/UN23.OT.01/2014 menetapkan fakultas-fakultas baru dilingkungan Universitas Jenderal Soedirman. FKIK termasuk salah satu fakultas yang di rekomendasikan untuk melakukan “pemekaran fakultas”. Maka di tahun 2014 berdirilah Fakultas Ilmu-ilmu Kesehatan (FIKES) ',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas Ilmu Budaya',
    description:
        'Fakultas Ilmu Budaya terdiri dari empat jurusan yaitu Jurusan Sastra Inggris yang mewadahi Program Studi S1 Sastra Inggris dan D3 Bahasa Inggris, Jurusan S1 Sastra Indonesia, Jurusan Sastra Jepang yang terdiri dari Program Studi S1 Sastra Jepang dan D3 Bahasa Mandarin , dan Jurusan Kependidikan yang menaungi Program Studi S1 Pendidikan Bahasa Indonesia dan S1 Pendidikan Bahasa Inggris.',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas MIPA',
    description:
        'Fakultas Matematika dan Ilmu Pengetahuan Alam UNSOED adalah salah satu dari enam fakultas baru yang didirikan berdasarkan Permendikbud No. 21 Tahun 2014 tentang Organisasi dan Tata Kerja UNSOED. Cikal bakalnya telah dimulai pada tahun 1999 bernama Program Sarjana MIPA dan mempunyai tiga Jurusan, yaitu Jurusan Kimia, Matematika dan Fisika. ',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas Perikanan dan Ilmu Kelautan',
    description:
        '',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
  FakultasModel(
    title: 'Fakultas Peternakan',
    description:
        'Fakultas Peternakan UNSOED diresmikan pendiriannya pada 10 Pebruari 1966 dengan fokus pada pengembangan sumberdaya peternakan dan kearifan lokal secara berkelanjutan, melalui penguasaan sains produksi, nutrisi dan pakan, sosial ekonomi serta teknologi peternakan.  Seiring dengan kebutuhan masyarakat akan tenaga trampil (siap pakai) maka pada tahun 1982 Fakultas Peternakan Unsoed membuka program Diploma Produksi Ternak Unggas dan Perah (DIII-PTUP) yang pada tahun 1999 berubah menjadi Program Studi Diploma Tiga Budidaya Ternak. Fakultas Peternakan menyelenggarakan empat program studi',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  ),
];
