import 'package:flutter/material.dart';
import 'package:convex_dart/src/rust/api/simple.dart';
import 'package:convex_dart/src/rust/frb_generated.dart';

Future<void> main() async {
  
  await RustLib.init();
  var client = await MobileConvexClient.newInstance(deploymentUrl: "https://energized-gazelle-394.convex.cloud", clientId: "flutter-app-1.0");
  var response = await client.action(name: "arithmatic:operation", args: {"a": "10", "b": "20"});
  print(response);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
        body: Center(
          child: Text(
            'Action: Call Rust `greet("Tom")`\nResult: ',
          ),
        ),
      ),
    );
  }
}
