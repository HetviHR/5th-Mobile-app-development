import 'package:flutter/material.dart';
import 'second.dart';
import 'ECommerce.dart';

void main() {
  runApp(MaterialApp(home:  MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController txt1 = new TextEditingController();
  TextEditingController txt2 = new TextEditingController();
  var myans = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Sum demo ', style: TextStyle(fontSize: 30)),
              TextField(controller:  txt1),
              TextField(controller: txt2),
              ElevatedButton(onPressed: (){
                doSum();
              }, child: Text("+")),
              Text("$myans"),
              Image.asset("assets/images/LOGO.jpg", width: 50),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Text("Second Screen"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Ecommerce()));
                },
                child: Text("ECommerce Screen"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void doSum() {
    var a = txt1.text;
    var b = txt2.text;
    var c = int.parse(a) + int.parse(b);
    setState(() {
      myans = "Sum is $c";
    });
  }
}

