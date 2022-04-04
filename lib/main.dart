import 'dart:io';

import 'package:flutter/material.dart';

var list = '';

void main() async {
	list = (await NetworkInterface.list(includeLoopback: true,includeLinkLocal: true)).toString();
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
				title: 'Testing App',
				theme: ThemeData(
						primaryColor: Colors.cyan
				),
				home: const Home(),
		);
	}
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
				body: Center(
						child: SizedBox(
								height: 300,
								width: double.infinity,
								child: ListView(
										children: [
											Text(NetworkInterface.listSupported.toString()),
											Text(list)
										],
								),
						),
				),
		);
	}
}
