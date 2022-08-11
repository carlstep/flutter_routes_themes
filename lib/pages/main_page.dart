import 'package:flutter/material.dart';
import 'package:flutter_routes_themes/routes/routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  dynamic result = 'Data to comeback';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  RouteManager.secondPage,
                );
              },
              child: const Text('Go To Second Page'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                var resultBack = await Navigator.of(context)
                    .pushNamed(RouteManager.thirdPage, arguments: {
                  'name': 'John Rambo',
                });
                setState(() {
                  result = resultBack;
                });
              },
              child: const Text('Go To Third Page'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}
