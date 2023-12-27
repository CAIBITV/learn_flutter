import 'package:flutter/material.dart';
class YYTContentBody extends StatelessWidget{
  // 错误的代码
  final flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // 主轴对齐方式
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: flag,
              onChanged: (value) => flag = value!
          ),
          const Text("同意协议", style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}