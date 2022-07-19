import 'package:appsoed/app/modules/todolist/db/db_model.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

import '../../todolist/db/database_manager.dart';

class HomeController extends GetxController {
  var currentSlider = 0.obs;
  final CarouselController carouselController = CarouselController();
  // *: DATA SLIDER
  final List<String> imgList = [
    'assets/S3.png',
    'assets/PORSOED.png',
    'assets/nyala_desa.png',
    'assets/FOSA.png',
  ];
  // * : CONNECTIVITY
  Connectivity connectivity = Connectivity();

// * Name User
// authController.auth.currentUser!.isAnonymous

  //* BOTTOM NAVIGATION BAR
  var currentBottom = 0.obs;
  onPageChangeBottom(int index) {
    currentBottom.value = index;
  }

  onPageChangeSlider(index, reason) {
    currentSlider.value = index;
  }

  //Membuat List kosong yang nantinya akan diisi data dari database
  RxList allRecipe = <DBModel>[].obs;

  //Memanggil class database nya
  DatabaseManager database = DatabaseManager.instance;

  //Membuat fungsi untuk mengambil seluruh data dari database
  Future getAllNote() async {
    Database db = await database.database;
    List<Map<String, dynamic>> data = await db.query('todos');
    //Melakukan pengecekan jika datanya tidak kosong maka variabel list tadi di isi dengan data dari database
    if (data.isNotEmpty) {
      allRecipe(DBModel.toJsonList(data));
      allRecipe.refresh(); //Refresh disini berfungsi untuk update UI
    } else {
      allRecipe.clear();
      allRecipe.refresh();
    }
  }

  @override
  void onInit() {
    super.onInit();
    getAllNote();
  }
}
