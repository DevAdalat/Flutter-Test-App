import 'dart:io';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing App',
      theme: ThemeData(primaryColor: Colors.cyan),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> value = [
      Directory.systemTemp.path,
      Directory.current.path,
      Platform.localeName,
      Platform.operatingSystem,
      Platform.executable,
      Platform.localHostname,
      Platform.operatingSystemVersion,
      Platform.resolvedExecutable,
      Platform.numberOfProcessors.toString(),
      Platform.environment.toString(),
      Platform.script.path,
      Platform.resolvedExecutable,
      Platform.packageConfig.toString(),
      Platform.pathSeparator,
      Platform.script.userInfo,
      Platform.script.host,
      Platform.script.port.toString()
    ];

    return Scaffold(
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return ElevatedButton(
                onPressed: (() {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(value[index])));
                }),
                child: Text(index.toString()));
          }),
					itemCount: value.length,
        ),
    );
  }
}
