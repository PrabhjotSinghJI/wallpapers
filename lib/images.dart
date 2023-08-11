import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('What Would You Like'), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 11),
            ),
            Center(
              child: Text('', style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/2.png.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/3.png.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/4.png.jpg"),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/5.png.jpg")),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/6.png.jpg")),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/7.png.jpg")),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/8.png.jpg")),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/3.png.jpg")),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/2.png.jpg")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/1.png.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
