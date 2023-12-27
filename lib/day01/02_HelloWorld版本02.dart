import 'package:flutter/material.dart';

/*main() {
  // 1.runApp函数
  runApp(
    YYTHomePage()
  );
}*/
main() => runApp(MyApp());

/// widget树 + 组件化开发思想
///
/// widget:
/// 有状态的widget: StatefulWidget 在运行过程中有些状态(data)需要改变
/// 无状态的widget: StatelessWidget 内容是确定没有状态(data)的改变
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // Scaffold脚手架快速搭建页面
        home: YYTHomePage()
    );
  }
}

class YYTHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("第一个Flutter程序")
        ),
        body: YYTContentBody()
    );
  }
}

class YYTContentBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
            "Hello World!",
            style: TextStyle(
                fontSize: 30,
                color: Colors.orange
            )
        )
    );
  }

}
