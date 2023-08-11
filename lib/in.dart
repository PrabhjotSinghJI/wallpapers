import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'newscreen.dart';

class IN extends StatefulWidget {
  const IN({super.key});

  @override
  State<IN> createState() => _INState();
}

class _INState extends State<IN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SlidingUpPanel(
        panel: _panel(),
        body: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewScreen(),
                ));
          },
          child: const Text(''),
        ),
      ),
    );
  }

  _panel() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                  fontFamily: 'Trajan',
                  fontStyle: FontStyle.italic,
                  fontSize: 22),
            )
          ],
        )
      ],
    );
  }
}
