class Dokument {
  String? doc_title;
  String? doc_asset;
  String? doc_date;
  int? page_num;

  Dokument(this.doc_title, this.doc_asset, this.doc_date, this.page_num);

  static List<Dokument> doc_list = [
    Dokument(
        "Modul Uang Kuliah Tunggal", "assets/ukt_2022.pdf", "19 Juli 2022", 17),
    Dokument("Pedoman Umum Administrasi Eksternal", "assets/manual.pdf",
        "19 Juli 2022", 27),
    Dokument(
        "Handbook Minat dan Bakat", "assets/handbook.pdf", "19 Juli 2022", 61),
  ];
}
