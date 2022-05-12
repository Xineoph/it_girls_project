import 'package:flutter/material.dart';

class NullScreen extends StatelessWidget {
  const NullScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('ПРИВЕТ!!!'),
        ),
      ),
    );
  }
}
