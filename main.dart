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
  int counter = 1;
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("MyApp"),backgroundColor: Colors.indigo),
        body: Column(
          children: [
            Text("Counter Value is $counter", style: TextStyle(fontSize: 45)),
            ElevatedButton(
              onPressed: () {
                incrementData();
              }, 
              child: Text("+"),
            ),
            ElevatedButton(
              onPressed: (){ 
                decrementData(); 
              },
                child: Text("-")),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              }, 
                child: Text("X")),
            TextField(
              onChanged: (value) =>{
                setState(() {
                  if(int.parse(value)%2 == 0)
                  {
                    msg = "Value is even";
                  }
                  else{
                    msg = "Value is odd";
                  }
                }),
              },
            ),
            Text("$msg",style:TextStyle(fontSize: 25, color: Colors.red)),
            Icon(Icons.lock_clock, color: Colors.deepPurple,size: 100),
            TextButton(onPressed: (){},
            onLongPress: () {
              print("Long Pressed");
            },
            child: Text("Text button")),
            ElevatedButton.icon(onPressed: (){}, label: Icon(Icons.delete)),
            IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            OutlinedButton(onPressed: () {}, child: Text("OutlinedButton"))
          ],
        ),
      )
    );
  }
  void incrementData(){
    if(counter >=5)
    {
      setState(() {
        msg = "It's > 5";
      });
    }
    else{
    setState(() {
          counter++;
          msg = "";
    });
    }
  }
  void decrementData(){
    if(counter <= 0){
      setState(() {
        msg = "It's <0";
      });
    }
    else{
    setState(() {
          counter--;
          msg = "";
    });
  }
  }
}