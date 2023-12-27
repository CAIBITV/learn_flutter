import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // 1.ElevatedButton
        ElevatedButton(
          onPressed: () => print("ElevatedButton Click"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
          ),
          child: const Text("ElevatedButton"),
        ),
        // 2.TextButton
        TextButton(
          onPressed: () => print("TextButton Click"),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 20))),
          child: const Text("TextButton"),
        ),
        // 3.OutlineButton
        OutlinedButton(
          onPressed: () => print("OutlineButton Click"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
          ),
          child: const Text("OutlineButton"),
        ),
        // 5.自定义button: 图标-文字-背景-圆角
        TextButton(
          onPressed: () => print("自定义button Click"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.favorite, color: Colors.red),
              Text("喜欢作者", style: TextStyle(color: Colors.black)),
            ],
          ),
        )
      ],
    );
  }
}
