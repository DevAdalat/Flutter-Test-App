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
								child: ListView(
										children: [
											Text( "Directory.systemTemp.path" + Directory.systemTemp.path),
											Text( 'Directory.current.path' + Directory.current.path),
											Text( 'Platform.pathSeparator' + Platform.pathSeparator),
											Text( "Platform.localeName" + Platform.localeName),
											Text( "Platform.operatingSystem" + Platform.operatingSystem),
											Text( "Platform.executable" + Platform.executable),
											Text( "Platform.localHostname" + Platform.localHostname),
											Text( "Platform.operatingSystemVersion" + Platform.operatingSystemVersion),
											Text( "Platform.resolvedExecutable" + Platform.resolvedExecutable),
											Text( "Platform.numberOfProcessors" + Platform.numberOfProcessors.toString()),
											Text( "Platform.environment" + Platform.environment.toString()),
											Text( "Platform.script.path" + Platform.script.path),
											Text( "Platform.resolvedExecutable" + Platform.resolvedExecutable),
											Text( "Platform.packageConfig" + Platform.packageConfig.toString()),
											Text( 'Platform.script.userInfo' + Platform.script.userInfo),
											Text( "Platform.script.host" + Platform.script.host ),
											Text( "Platform.script.port" + Platform.script.port.toString())
										],
						),
				),
		);
	}
}
