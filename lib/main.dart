import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController submitButton = TextEditingController();
  String data = 'none';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: submitButton,
                  decoration: const InputDecoration(
                      hintText: 'input teks', border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      data = submitButton.text;
                    });
                  },
                  child: const Text('submit')),
              const SizedBox(height: 20),
              Text(data)
            ],
          ),
        ),
      ),
    );
  }
}
