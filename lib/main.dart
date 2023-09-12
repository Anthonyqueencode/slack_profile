import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import './gitHub.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 109, 15, 125),
          title: const Text(
            'My Slack Profile',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/queeny.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Queen Anthony',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Builder(builder: (context) {
            return ElevatedButton(
                child: Text('Open GitHub'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (contex) => MyGithubPage(),
                      ));
                });
          })
        ],
      ),
    ));
  }
}

// class MyGithubPage extends StatefulWidget {
//   @override
//   State<MyGithubPage> createState() => _MyGithubPageState();
// }

// class _MyGithubPageState extends State<MyGithubPage> {
//   final String githubProfile = 'https://github.com/Anthonyqueencode';
//   late WebViewController _webViewController;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 109, 15, 125),
//         title: Text('My GitHub Profile'),
//       ),
//       body: Container(
//         height: 500.0,
//         child: WebView(
//           initialUrl: githubProfile,
//           javascriptMode: JavascriptMode.unrestricted,
//           onWebViewCreated: (WebViewController webViewController) {
//             _webViewController = webViewController;
//           },
//         ),
//       ),
//       floatingActionButton: ElevatedButton(
//           onPressed: () {
//             // Refresh the WebView page when the button is pressed
//             if (_webViewController != null) {
//               _webViewController.reload();
//             }
//           },
//           child: Text('Open GitHub')),
//     );
//   }
// }
