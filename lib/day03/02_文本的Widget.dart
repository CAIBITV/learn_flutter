import 'package:flutter/material.dart';

class TextRichDemo extends StatelessWidget {
  const TextRichDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(
      /*text: "《定风波》",
      style: TextStyle(
        fontSize: 20,
        color: Colors.red,
        fontWeight: FontWeight.bold
      )*/
      children: [
        TextSpan(text: "《定风波》", style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
        TextSpan(text: "苏轼", style: TextStyle(fontSize: 17, color: Colors.green, fontWeight: FontWeight.bold)),
        WidgetSpan(child: Icon(Icons.add,color: Colors.deepOrange)),
        TextSpan(text: "莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
      ]
    ));
  }
}

// Text Widget: 注意Text Widget不是最终渲染的Widget
class TextDemo extends StatelessWidget {
  const TextDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
        "《定风波》 苏轼 莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
      style: TextStyle(
        fontSize: 20,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 1
    );
  }
}
