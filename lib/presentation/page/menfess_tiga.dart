import 'package:flutter/material.dart';

// void main() {
//   runApp(PageTiga());
// }

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Pesan Berhasil Diposting',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff373737),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/success.png',
                  width: 230,
                  height: 262,
                  fit: BoxFit.contain,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Colors.amber,
                  ),
                  child: OutlinedButton.icon(
                    icon: const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    label: const Text(
                      'Kembali ke menu menfess',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
