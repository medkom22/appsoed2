class InfoUkmModel {
  int id;
  String namaUKM;
  String keterangan;
  String deskripsi;
  String image;
  InfoUkmModel({
    required this.keterangan,
    required this.id,
    required this.namaUKM,
    required this.deskripsi,
    required this.image,
  });
}

List dataInfoUkm = [
  InfoUkmModel(
    id: 1,
    namaUKM: 'UMAKA',
    deskripsi:
        'UMAKA adalah unit kegiatan mahasiswa yang bergerak di bidang kerohanian yang mewadahi mahasiswa katolik yang ada di Unsoed.',
    image: 'assets/umaka.png',
    keterangan: 'Unit Kegiatan Mahasiswa Katolik',
  ),
  InfoUkmModel(
    id: 2,
    namaUKM: 'SEF',
    deskripsi:
        'SEF adalah unit kegiatan mahasiswa yang bergerak di bidang pengembangan skill dan talent bahasa inggris dan merupakan English Club tingkat universitas.',
    image: 'assets/sef.png',
    keterangan: 'Student English Forum',
  ),
  InfoUkmModel(
    id: 3,
    namaUKM: 'UKKI',
    deskripsi:
        'UKKI adalah unit kegiatan mahasiswa yang bergerak di bidang dakwah islam yang memiliki pengaruh di lingkungan Lembaga Dakwah Kampus (LDK) Unsoed dan LDK lainnya di Purwokerto.',
    image: 'assets/ukki.jpg',
    keterangan: 'Unit Kegiatan Kerohanian Islam',
  ),
  InfoUkmModel(
    id: 4,
    namaUKM: 'SRT',
    deskripsi:
        'SRT adalah unit kegiatan mahasiswa yang bergerak  dalam penelitian ilmu bidang robotika dan pengembangan organisasi dan tim robotika yang ada di Unsoed.',
    image: 'assets/srt.png',
    keterangan: 'Soedirman Robotic Team',
  ),
  InfoUkmModel(
    id: 5,
    namaUKM: 'BKC',
    deskripsi:
        'BKC didirikan dengan maksud menghimpun pemuda, pelajar serta berbagai kalangan dalam pembinaan olah raga beladiri berdasarkan kekeluargaan hormat-menghormati serta saling mencintai antara satu dan sesamanya.',
    image: 'assets/bkc.jpg',
    keterangan: 'Bandung Karate Club',
  ),
  InfoUkmModel(
    id: 6,
    namaUKM: 'USMAN',
    deskripsi:
        'USMAN berdiri secara resmi pada tanggal 5 Februari 2017. Bidang kesenian yang terdapat pada UKM USMAN diantaranya Tahfidz dan Tafsir, Sholawat, Kaligrafi, Tilawah, dan Saman.',
    image: 'assets/usman.png',
    keterangan:
        'Perkumpulan Mahasiswa Peduli Kesenian Musik Islami Rebana dan Seni Tilawah',
  ),
  InfoUkmModel(
    id: 7,
    namaUKM: 'SEIGOKAN',
    deskripsi:
        'UKM Karate Seigokan Unsoed merupakan UKM tingkat universitas yang bergerak dalam bidang olahraga. Selain bidang olahraga yang bisa meningkatkan prestasi, UKM Karate Seigokan Unsoed juga fokus dalam bidang organisasi sehingga dapat menambah relasi bagi anggota.',
    image: 'assets/seigokan.jpg',
    keterangan: '',
  ),
  InfoUkmModel(
    id: 8,
    namaUKM: 'TAEKWONDO',
    deskripsi:
        'UKM Taekwondo merupakan salah satu UKM tingkat universitas yang bergerak dalam bidang olahraga bela diri dan sudah meraih banyak prestasi.',
    image: 'assets/taekwondo.jpg',
    keterangan: '',
  ),
  InfoUkmModel(
    id: 9,
    namaUKM: 'BOLA VOLI',
    deskripsi:
        'UKM Bola Voli Unsoed merupakan UKM olahraga cabang olahraga Bola Voli di tingkat universitas yang menjadi wadah bagi para atlet Bola Voli di tiap fakultas untuk berkumpul dan berlatih, selain itu UKM Bola Voli juga wadah untuk para mahasiswa mengembangkan kemampuan berorganisasi.',
    image: 'assets/voli.jpg',
    keterangan: '',
  ),
  InfoUkmModel(
    id: 10,
    namaUKM: 'BULUTANGKIS',
    deskripsi:
        'UKM Bulu Tangkis Unsoed merupakan UKM tingkat universitas yang bergerak dalam bidang olahraga yang sudah meraih banyak prestasi.',
    image: 'assets/bultangkis.png',
    keterangan: '',
  ),
  InfoUkmModel(
    id: 11,
    namaUKM: 'PSM GBS',
    deskripsi:
        'UKM di tingkat universitas yang bergerak di bidang seni olah vokal khususnya paduan suara yang memiliki tujuan menggali dan mengembangkan minat, bakat, dan potensi mahasiswa di bidang seni olah vokal khususnya paduan suara.',
    image: 'assets/gbs.png',
    keterangan: 'Paduan Suara Mahasiswa Gita Buana Soedirman',
  ),
  InfoUkmModel(
    id: 12,
    namaUKM: 'RACANA',
    deskripsi:
        'Racana Soedirman Gugusdepan Bms. 26-1953-26-1954 adalah Unit Kegiatan Mahasiswa (UKM) Pramuka yang berpangkalan di Universitas Jenderal Soedirman. Racana Soedirman diresmikan pada 7 Juni 1980 oleh Kak Pramoe Soetomo dengan 10 orang kader Pramuka dari mahasiswa sebagai pengurus.',
    image: 'assets/racana.png',
    keterangan: '',
  ),
  InfoUkmModel(
    id: 13,
    namaUKM: 'PSHT',
    deskripsi:
        'PSHT merupakan organisasi yang mewadahi kegiatan dalam bidang seni beladiri pencak silat dan bidang budi pekerti atau kerohanian. PSHT membantu upaya pemerintah dalam mencerdaskan kehidupan bangsa.',
    image: 'assets/psht.jpg',
    keterangan: 'Persaudaraan Setia Hati Terate',
  ),
  InfoUkmModel(
    id: 14,
    namaUKM: 'KSRPMI',
    deskripsi:
        'KSR PMI merupakan Unit Kegiatan Mahasiswa yang ada di Unsoed yang bergerak di bidang kepalangmerahan dan kemanusiaan yang berada di bawah naungan Palang Merah Indonesia.',
    image: 'assets/pmi.png',
    keterangan: 'Palang Merah Indonesia',
  ),
  InfoUkmModel(
    id: 15,
    namaUKM: 'MERPATI PUTIH',
    deskripsi:
        'Merpati Putih Kolat Unsoed merupakan kelompok Latihan bela diri yang memfasilitasi mahasiswa maupun masyarakat umum untuk mengembangkan minat dan bakat dalam ilmu beladiri pencak silat khususnya melalui keilmuan Merpati Putih.',
    image: 'assets/merpatiputih.jpg',
    keterangan: '',
  ),
  InfoUkmModel(
    id: 16,
    namaUKM: 'MENWA',
    deskripsi:
        'Resimen Mahasiswa 904/Kalayudha merupakan wadah penyaluran potensi mahasiswa khususnya pada bidang bela. Kegiatan yang dilakukan oleh anggota Menwa seperti latihan menembak, mounteneering, paskibra, dan Search and Rescue (SAR).',
    image: 'assets/menwa.png',
    keterangan: 'Resimen Mahasiswa',
  ),
  InfoUkmModel(
    id: 17,
    namaUKM: 'UBB',
    deskripsi:
        'UBB adalah UKM yang bergerak dalam bidang keolahragaan khususnya bola basket, sebagai wadah bagi para mahasiswa yang memiliki minat lebih ke bola basket baik yang berkeinginan menjadi atlet atau menjadi pengurus UBB.',
    image: 'assets/ubb.png',
    keterangan: 'UKM BOLA BASKET UNSOED',
  ),
  InfoUkmModel(
    id: 18,
    namaUKM: 'PMKP',
    deskripsi:
        'Wadah mahasiswa Kristen Unsoed yang merasa terpanggil untuk melayani dan mewujudkan ilmu dalam kesatuan gerak dan langkah bersama untuk menciptakan dan membangun kampus yang dinamis dan sesuai dengan Tri Dharma Perguruan Tinggi.',
    image: 'assets/pmkp.jpg',
    keterangan: 'Persekutuan Mahasiswa Kristen Protestan Unsoed',
  ),
  InfoUkmModel(
    id: 19,
    namaUKM: 'LPM SKETSA',
    deskripsi:
        'LPM Sketsa  berusaha tetap sejalan dengan tujuannya menjadi pemandu wawasan almamater. Dalam menumbuhkan budaya kritis, intelektual, dan rasa humanisme pada mahasiwa, LPM Sketsa  berusaha untuk menghasilkan produk jurnalistik berkualitas.',
    image: 'assets/sketsa.jpg',
    keterangan: 'Lembaga Pers Mahasiswa',
  ),
  InfoUkmModel(
    id: 20,
    namaUKM: 'UPL MPA',
    deskripsi:
        'UKM tingkat universitas yang bergerak dalam bidang kepecintaalaman, petualangan alam bebas, dan pelestarian lingkan. Memiliki 7 divisi diantaranya: Gunung, Hutan, Panjat Tebing, Susur Gua,Arung Jeram, Rawa Laut, Konservasi, Selam.',
    image: 'assets/uplmpa.jpg',
    keterangan: 'Unit Pandu Lingkungan Mahasiswa pecinta Alam',
  ),
  InfoUkmModel(
    id: 21,
    namaUKM: 'CATUR',
    deskripsi:
        'UKM Catur berfokus pada pembelajaran dan mengembangkan softskill organisasi yang diharapkan menjadi tempat untuk menggali skill yang terpendam. Mahasiswa tidak harus bisa atau mahir dalam keanggotaan disini orang awam yang belum bisa Catur akan dibimbing dan belajar bersama sampai bisa.',
    image: 'assets/catur.jpg',
    keterangan: '',
  ),
  InfoUkmModel(
    id: 22,
    namaUKM: 'PANJAT TEBING',
    deskripsi:
        'UKM olahraga panjat tebing yang bergerak di bidang prestasi, berada di PKM Unsoed yang diresmikan pada 17 Januari 2019.',
    image: 'assets/panjattebing.jpg',
    keterangan: '',
  ),
  InfoUkmModel(
    id: 23,
    namaUKM: 'MARCHING BAND',
    deskripsi:
        'Marching Band Bahana Putra Soedirman adalah UKM yang menggabungkan seni, musik, tari dan olahraga.',
    image: 'assets/marchingband.png',
    keterangan: '',
  ),
  InfoUkmModel(
    id: 24,
    namaUKM: 'UKMPR',
    deskripsi:
        'UKM tingkat universitas yang bergerak di bidang Penalaran dan Riset. UKMPR berfokus pada kegiatan Keilmiahan di Universitas Jenderal Soedirman.',
    image: 'assets/ukmpr.png',
    keterangan: 'UKM Penalaran dan Riset',
  ),
  InfoUkmModel(
    id: 25,
    namaUKM: 'KEMPO',
    deskripsi:
        'Kempo merupakan salah satu unit kegiatan mahasiswa bela diri yang ada di Universitas Jenderal Soedirman, bersekretariat di Pusat Kegiatan Mahasiswa Unsoed.',
    image: 'assets/kempo.jpg',
    keterangan: '',
  ),
];
