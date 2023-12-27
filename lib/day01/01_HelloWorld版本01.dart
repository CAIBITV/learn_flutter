import 'package:flutter/material.dart';

main() {
  // 1.runApp函数
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // Scaffold脚手架快速搭建页面
      home: Scaffold(
        appBar: AppBar(
          title: const Text("第一个Flutter程序")
        ),
        body: const Center(
          child: Text(
            "Hello World!",
            style: TextStyle(
                fontSize: 30,
                color: Colors.orange
            )
          )
        )
      )
    )
  );
}

/**
 * widget:
 * 有状态的widget: StatefulWidget 在运行过程中有些状态(data)需要改变
 * 无状态的widget: StatelessWidget 内容是确定没有状态(data)的改变
 */
class YYTHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text("data");
  }

}
