import 'package:any_to_any_converter/any_to_any_converter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Title".toText(),
      ),
      body: ListView(
        children: [
          "This is H1 Text".toH1Text(context),
          const HorizontalGap(),
          "This is H1 Text with fontSize 20"
              .toH1Text(context)
              .copyWith(styleFontSize: 20),
          const HorizontalGap(),
          "This is H1 Text with fontSize 20 and underline"
              .toH1Text(context)
              .copyWith(styleFontSize: 20)
              .underline(),
        ],
      ).paddingAll(10),
    );
  }
}
