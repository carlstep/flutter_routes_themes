import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String name;
  // ignore: use_key_in_widget_constructors
  const ThirdPage({required this.name});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Third Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Hi, ${widget.name}, go back to Main Page'),
          onPressed: () {
            Navigator.pop(context, 'hello John');
          },
        ),
      ),
    );
  }
}
