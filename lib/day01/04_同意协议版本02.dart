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
// 命令式编程(Android IOS) VS 声明式编程(Vue react Angular)
// StatefulWidget: 继承自StatefulWidget类(可以接收父Widget传过来的数据)/State类(状态)
// flag 状态
// StatefulWidget也不能定义状态 -> Widget类中有注解@immutable，要求数据是final的 -> 创建一个单独的类，这个类负责维护状态
class YYTContentBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return YYTContentBodyState();
  }
}

class YYTContentBodyState extends State<YYTContentBody>{
  var flag = true;
  @override
  Widget build(BuildContext context) {
    // this.widget对YYTContentBody的引用？
    return Center(
      child: Row(
        // 主轴对齐方式
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: flag,
              onChanged: (value) {
                // 更新数据
                setState(() {
                  flag = value!;
                });
              }
          ),
          const Text("同意协议", style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}
