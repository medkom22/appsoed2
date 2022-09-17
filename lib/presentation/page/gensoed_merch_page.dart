import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GensoedMerchPage extends StatefulWidget {
  const GensoedMerchPage({super.key});

  @override
  State<GensoedMerchPage> createState() => _GensoedMerchPageState();
}

class _GensoedMerchPageState extends State<GensoedMerchPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebView(
        initialUrl: 'https://gensoed.com/merch',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
