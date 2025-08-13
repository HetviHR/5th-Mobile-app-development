import 'package:flutter/material.dart';
import 'main.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Third Screen',
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: Text("Home Screen"),
            ) 
          ],
        ),
      ),
    );

  }
}