import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key, required this.count});

  int count;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void decrement() {
    widget.count--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${widget.count}',
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, widget.count);
              },
              child: const Text('Go to First Page'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: decrement,
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
