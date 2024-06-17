import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Hasib",
          style: TextStyle(
            color: Colors.white, // Font color
            fontSize: 24.0, // Font size
            fontWeight: FontWeight.bold, // Font weight
            fontStyle: FontStyle.italic, // Font style
            letterSpacing: 2.0, // Letter spacing
          ),),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is from Home to Activity 1")));
          }, child: Text("Go to Activity 1")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from Home to Activity 2")));
          }, child: Text("Go to Activity 2"))
        ],
      ),
    );
  }

}
class Activity1 extends StatelessWidget{
  String msg;
  Activity1(
      this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from Activity 1 to Activity 2")));
        },child: Text("Activity 2"),),
      ),
    );
  }

}
class Activity2 extends StatelessWidget{
  String msg;
  Activity2(
      this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        centerTitle: true,
      ),
    );
  }

}