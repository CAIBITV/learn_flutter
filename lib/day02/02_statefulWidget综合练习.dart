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

class YYTHomePage extends StatelessWidget {
  const YYTHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("商品列表")),
        body: const YYTHomeContent("Hello World"));
  }
}

// Widget是不加_: 暴露给别人使用
class YYTHomeContent extends StatefulWidget {
  final String message;
  const YYTHomeContent(this.message, {super.key});

  @override
  State<YYTHomeContent> createState() => _YYTHomeContentState();
}

/*
 * 为什么Flutter在设计的时候StatefulWidget的build方法放在State中
 *  1.build出来的Widget是需要依赖State中的变量(状态/数据)
 *  2.在Flutter的运行过程中:
 *    Widget是不断的销毁和创建的
 *    当我们自己的状态发生改变时, 并不希望重新状态一个新的State
 */
// State是加_: 状态这个类是给Widget使用
class _YYTHomeContentState extends State<YYTHomeContent> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getButtons(),
          Text("当前计数: $_count", style: TextStyle(fontSize: 25)),
          Text("传递的信息: ${this.widget.message}", style: TextStyle(fontSize: 25))
        ]
      )
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () => setState(() {
              _count--;
            }),
            child: Text("-1", style: TextStyle(fontSize: 20)),
        ),
        SizedBox(width: 10),
        ElevatedButton(
            onPressed: () => setState(() {
              _count++;
            }),
            child: Text("+1", style: TextStyle(fontSize: 20)),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink),
              foregroundColor: MaterialStateProperty.all(Colors.white)
            )
        )
      ],
    );
  }
}
