import 'package:appsoed/data/repository/launcher_repository.dart';
import 'package:flutter/material.dart';

class LauncherNotifier extends ChangeNotifier {
  LauncherRepository repository;
  LauncherNotifier(this.repository);
  bool isLoading = false;
  Future getWALauncher(String wa) async {
    try {
      isLoading = true;
      await repository.getLaunchUrl(wa);
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading = false;
    }
  }
}
