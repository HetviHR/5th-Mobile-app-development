import 'package:flutter/material.dart';

import 'third.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}


class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text("My App Second"),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Demo',
            ),
              ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()));
              },
              child: Text("Third Screen"),
            )
          ],
        ),
      ),
    );
  }
}