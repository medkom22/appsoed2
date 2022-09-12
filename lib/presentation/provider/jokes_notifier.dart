import 'package:appsoed/common/constant.dart';
import 'package:appsoed/data/repository/jokes_repository.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class JokesNotifier extends ChangeNotifier {
  JokesRepository repository;
  JokesNotifier(this.repository);
  bool isTextLoading = false;
  bool isImgLoading = false;

  Future getTextJoke(context) async {
    try {
      isTextLoading = true;
      notifyListeners();
      await repository.getJokes().then(
        (value) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
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
      isTextLoading = false;
      notifyListeners();
    } catch (e) {
      return showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Error'),
            content: Text('Pastikan kamu terkoneksi dengan Internet'),
          );
        },
      );
    }
  }

  Future getImgJokes(context) async {
    try {
      isImgLoading = true;
      notifyListeners();
      await repository.getImgJokes().then(
        (value) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              title: Text(
                'Jokes kali ini',
                style: TextStyle(
                  fontWeight: bold,
                  fontSize: 24,
                ),
              ),
              content: CachedNetworkImage(
                imageUrl: value.data!.url.toString(),
                width: 400,
                height: 400,
                errorWidget: (context, url, error) => const Icon(Icons.error),
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
      isImgLoading = false;
      notifyListeners();
    } catch (e) {
      return showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Error'),
            content: Text('Pastikan kamu terkoneksi dengan Internet'),
          );
        },
      );
    }
  }
}
