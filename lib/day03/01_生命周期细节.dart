import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: YYTHomePage());
  }
}

class YYTHomePage extends StatefulWidget {
  const YYTHomePage({super.key});

  @override
  State<YYTHomePage> createState() => _YYTHomePageState();
}

class _YYTHomePageState extends State<YYTHomePage> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
        appBar: AppBar(title: const Text("商品列表")),
        body: Column(
          children: [
            YYTHomeContent()
          ],
        ),
        floatingActionButton: ElevatedButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {});
            })
    );
  }
}

// StatelessWidget的生命周期
/*
class YYTHomeContent extends StatelessWidget {
  final String message;
  YYTHomeContent(this.message, {super.key}) {
    print("构造函数被调用");
  }

  @override
  Widget build(BuildContext context) {
    print("build方法被调用");
    return Text(message);
  }
}
*/

// StatefulWidget的生命周期
class YYTHomeContent extends StatefulWidget {
  YYTHomeContent({super.key}) {
    print("1.调用YYTHomeContent的constructor方法");
  }

  @override
  State<YYTHomeContent> createState() {
    print("2.调用YYTHomeContent的createState方法");
    return _YYTHomeContentState();
  }
}

class _YYTHomeContentState extends State<YYTHomeContent> {
  int _count = 0;

  _YYTHomeContentState() {
    print("3.调用_YYTHomeContentState的constructor方法");
  }

  @override
  void initState() {
    print("4.调用_YYTHomeContentState的initState方法");
    // 调用：这里是必须调用super
    super.initState();
  }

  @override
  void didUpdateWidget(covariant YYTHomeContent oldWidget) {
    print("调用_YYTHomeContentState的didUpdateWidget方法");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print("调用_YYTHomeContentState的didChangeDependencies方法");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("5.调用_YYTHomeContentState的build方法");
    return Column(
      children: <Widget>[
        ElevatedButton(
            child: Icon(Icons.add),
            onPressed: () {
             /* _count++;
              var element = context as StatefulElement;
              element.markNeedsBuild();*/
              setState(() {
                _count++;
              });
            }),
        Text("数字:$_count")
      ],
    );
  }

  @override
  void dispose() {
    print("6.调用_YYTHomeContentState的dispose方法");
    super.dispose();
  }
}

