import 'package:flutter/material.dart';

class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});

  @override
  State<Ecommerce> createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  var mylist = ["C", "C++", "PHP", "Android", "Python", "Flutter", "React"];
  var imgpath = ["assets/images/1.jpg", 
  "assets/images/2.jpg", 
  "assets/images/3.jpg", 
  "assets/images/4.jpg", 
  "assets/images/5.jpg", 
  "assets/images/6.jpg", 
  "assets/images/7.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello! E-Commerce Page"),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: mylist.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: Image.asset(imgpath[index]),
              title: Text(mylist[index]),
              trailing: Icon(Icons.accessibility_outlined),
              onTap:() {
                print("Hello $index");
              },
              onLongPress: (){
                print("Long Pressed $index");
              },
            ),
          );
        },
      )
      // Center(
      //   child: Column(
      //     children: [
            // ListTile(
            //   title: Text("Hetvi"),
            //   subtitle: Text("Radadiya"),
            //   leading: Image.asset("assets/images/1.jpg"),
            //   trailing: Icon(Icons.navigate_next_outlined),
            // ),
            // ListTile(
            //   title: Text("Zeel"),
            //   subtitle: Text("Moradiya"),
            //   leading: Image.asset("assets/images/3.jpg"),
            //   trailing: Icon(Icons.navigate_next_outlined),
            // ),
            // ListTile(
            //   title: Text("Srushti"),
            //   subtitle: Text("Bhalala"),
            //   leading: Image.asset("assets/images/2.jpg"),
            //   trailing: Icon(Icons.navigate_next_outlined),
            // ),
            // ListTile(
            //   title: Text("Someone"),
            //   subtitle: Text("Else"),
            //   leading: Image.asset("assets/images/4.jpg"),
            //   trailing: Icon(Icons.navigate_next_outlined),
            // )
          );
  }
}