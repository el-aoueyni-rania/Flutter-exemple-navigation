import 'package:flutter/material.dart';

void main() {
  runApp(FirstRoute());
}

class FirstRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        title: 'First Route',
        home: MyHome(),
      ));
  }
}

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return (
    Scaffold(
      appBar: AppBar(title: Text('First Route'),),
      body: Center(
        child: ElevatedButton(child: Text('goToSecond'),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },),
      ),
    )
    );
  }
}

class SecondRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: 'Second Route',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Route"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigate back to first route when tapped.
              Navigator.pop(context);
            },
            child: Text('GoToFirst!'),
          ),
        ),
      ),
    ));
  }
}
