import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class MyGithubPage extends StatefulWidget {
  @override
  State<MyGithubPage> createState() => _MyGithubPageState();
}

class _MyGithubPageState extends State<MyGithubPage> {
  final String githubProfile = 'https://github.com/Anthonyqueencode';
  late WebViewController webViewController;

  @override
  @override
  void initState() {
    super.initState();
    WebViewPlatform.instance = AndroidWebViewPlatform();
    webViewController = WebViewController()
      ..loadRequest(Uri.parse(githubProfile));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 109, 15, 125),
        title: const Text('My Github Profile'),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop()),
      ),
      body: WebViewWidget(controller: webViewController),
    );
  }
}
