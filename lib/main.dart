import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(8),
                constraints: const BoxConstraints(maxWidth: 240),
                child: FormInputList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormInputList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: TextFormField(
            decoration: const InputDecoration(
                labelText: "Email", border: OutlineInputBorder()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: TextFormField(
            decoration: const InputDecoration(
                labelText: "Password", border: OutlineInputBorder()),
            obscureText: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
        ),
      ],
    );
  }
}
