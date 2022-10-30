import 'package:flutter/material.dart';

import 'Test_page.dart';

void main() {
  runApp(const my_ass());
}

class my_ass extends StatelessWidget {
  const my_ass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test_page(),
    );
  }
}
