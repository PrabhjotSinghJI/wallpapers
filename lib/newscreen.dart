import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  TextEditingController controller = TextEditingController();
  String link = "";

  bool notSet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          notSet
              ? const Text("No image link found")
              : Image.network(link, errorBuilder: (context, error, stackTrace) {
                  return const Text("No Link Found");
                }, loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return const Text("Loading");
                }),
          TextFormField(
            controller: controller,
            decoration: const InputDecoration(
                helperText: "Enter Image URL",
                filled: true,
                fillColor: Colors.white),
          ),
          CupertinoButton(
              color: Colors.green,
              onPressed: () {
                if (controller.value.text.isEmpty) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("Enter url")));
                } else {
                  link = controller.value.text;

                  setState(() {
                    notSet = false;
                  });
                }
              },
              child: const Text("Show Image"))
        ],
      ),
    ));
  }
}
