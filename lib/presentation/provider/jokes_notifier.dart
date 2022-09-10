import 'package:appsoed/common/constant.dart';
import 'package:appsoed/data/repository/jokes_repository.dart';
import 'package:flutter/material.dart';

class JokesNotifier extends ChangeNotifier {
  JokesRepository repository;
  JokesNotifier(this.repository);
  bool isLoading = false;

  Future getTextJoke(context) async {
    try {
      isLoading = true;
      notifyListeners();
      await repository.getJokes().then(
        (value) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                'Jokes kali ini',
                style: TextStyle(
                  fontWeight: bold,
                  fontSize: 24,
                ),
              ),
              content: Text(
                value.data.toString(),
                style: TextStyle(
                  fontWeight: medium,
                  fontSize: 20,
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'OK',
                  ),
                ),
              ],
            ),
          );
        },
      );
      isLoading = false;
      notifyListeners();
    } catch (e) {
      throw Exception(e);
    }
  }
}
