import 'package:flutter/material.dart';

main() => runApp(const MyApp());

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
        appBar: AppBar(title: const Text("基础\\nWidget")),
        body: const YYTHomeContent(),
        // 4.FloatingActionButton
        floatingActionButton: FloatingActionButton(
          onPressed: () => print("FloatingActionButton Click"),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}

class YYTHomeContent extends StatefulWidget {
  const YYTHomeContent({super.key});

  @override
  State<YYTHomeContent> createState() => _YYTHomeContentState();
}

class _YYTHomeContentState extends State<YYTHomeContent> {
  final imageUrl = "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif";

  @override
  Widget build(BuildContext context) {
    return ImageDemo01(imageUrl: imageUrl);
  }
}

class ImageDemo01 extends StatelessWidget {
  const ImageDemo01({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imageUrl),
      width: 200,
      height: 200,
      fit: BoxFit.fitWidth,
      // alignment: Alignment.bottomCenter, // 范围: [-1, 1]
      alignment: Alignment(0, 0),
      color: Colors.blue,
      colorBlendMode: BlendMode.colorBurn,
      repeat: ImageRepeat.repeatY,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      }
    );
  }
}
