import 'package:appsoed/common/constant.dart';
import 'package:appsoed/presentation/provider/jokes_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JokesPage extends StatelessWidget {
  const JokesPage({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<JokesNotifier>(context, listen: false);
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Text(
              'Kumpulan Lelucon',
              style: TextStyle(
                fontSize: 24,
                fontWeight: bold,
                color: blackColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Hari-hari mu sedang susah? Yuk, baca leluconnya!',
              style: TextStyle(
                fontSize: 16,
                color: blackColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Image.asset(
              'assets/question.jpg',
              width: 300,
              height: 300,
            ),
            Consumer<JokesNotifier>(
              builder: (context, jokes, child) {
                if (jokes.isTextLoading) {
                  return const CircularProgressIndicator();
                } else {
                  return Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 30,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(18),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(18),
                        onTap: () {
                          jokes.getTextJoke(context);
                        },
                        splashColor: Colors.white,
                        child: Center(
                          child: Text(
                            'Lelucon Text',
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: medium,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
            Consumer<JokesNotifier>(
              builder: (context, jokes, child) {
                if (jokes.isImgLoading) {
                  return const CircularProgressIndicator();
                } else {
                  return Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 50,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(18),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(18),
                        onTap: () {
                          jokes.getImgJokes(context);
                        },
                        splashColor: Colors.white,
                        child: Center(
                          child: Text(
                            'Lelucon Gambar',
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: medium,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
