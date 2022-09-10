import 'package:appsoed/presentation/provider/jokes_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JokesPage extends StatelessWidget {
  const JokesPage({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<JokesNotifier>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<JokesNotifier>(builder: (context, jokes, child) {
              if (jokes.isLoading) {
                return const CircularProgressIndicator();
              } else {
                return ElevatedButton(
                  child: const Text('Text Jokes'),
                  onPressed: () {
                    jokes.getTextJoke(context);
                  },
                );
              }
            })
          ],
        ),
      ),
    );
  }
}
