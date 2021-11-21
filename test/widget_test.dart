import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pruebasunit/main.dart';

void main() {
  testWidgets('MyWidget tiene un titulo y un mensaje',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyWidget(title: 'T', message: 'M'));
  });
}

class MyWidget extends StatelessWidget {
  final String title;
  final String message;
  const MyWidget({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext comtext) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(title: Text(title)),
          body: Center(child: Text(message))),
    );
  }
}
