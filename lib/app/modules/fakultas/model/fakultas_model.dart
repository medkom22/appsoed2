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

List<FakultasModel> dataFakultas = [
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
    title: 'Fakultas Sosial dan Politik',
    description:
        'Fakultas Ekonomi Universitas Jenderal Soedirman (UNSOED) berdiri dengan SK Menteri Perguruan Tinggi dan Ilmu Pengetahuan (PTIP) No. 127 Tahun 1963 tanggal 9 Oktober 1963. Pada waktu itu Fakultas Ekonomi UNSOED masih menempati gedung Balai Desa Purwokerto Lor dan gedung Kesenian. Jurusan yang ada barulah Ekonomi Perusahaan dan Ekonomi Pertanian dan sebagian besar tenaga pengajar dari Universitas Gajah Mada (UGM) Yogyakarta.',
    imageLocation: 'https://picsum.photos/id/2/200/300',
    gallery: [
      'https://picsum.photos/id/3/200/300',
      'https://picsum.photos/id/4/200/300'
    ],
  )
];
