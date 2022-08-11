import 'package:flutter/material.dart';
import 'package:flutter_routes_themes/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      // theme: ThemeData(
      //   primaryColor: Colors.amber,
      //   scaffoldBackgroundColor: Colors.blue[100],
      // ),
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
