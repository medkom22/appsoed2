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
];
