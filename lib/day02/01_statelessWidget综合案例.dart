import 'dart:io';

import 'package:flutter/material.dart';

/*
main() {
  runApp(MyApp());
}*/
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: YYTHomePage());
  }
}

class YYTHomePage extends StatelessWidget {
  const YYTHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("商品列表")),
        body: const YYTHomeContent());
  }
}

class YYTHomeContent extends StatelessWidget {
  const YYTHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: const [
          YYTHomeProductItem("Apple1", "Macbook Air",
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
          SizedBox(height: 8),
          YYTHomeProductItem("Apple2", "Macbook pro",
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
          SizedBox(height: 8),
          YYTHomeProductItem("Apple3", "Macbook pro max",
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')
        ],
      ),
    );
  }
}

class YYTHomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  final style1 = const TextStyle(fontSize: 25, color: Colors.orange);
  final style2 = const TextStyle(fontSize: 20, color: Colors.green);

  const YYTHomeProductItem(this.title, this.desc, this.imageURL, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      // 装饰
      decoration:
          BoxDecoration(border: Border.all(width: 5, color: Colors.purple)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title, style: style1),
            ],
          ),
          // 间距
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(desc, style: style2),
            ],
          ),
          // 间距
          const SizedBox(height: 8),
          Image.network(imageURL)
        ],
      ),
    );
  }
}
