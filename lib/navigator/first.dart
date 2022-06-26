import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirtsapp/navigator/second.dart';

class FirstScreen extends StatelessWidget {

  final String message = 'Hello form first screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(message)));
          },
        ),
      ),
    );
  }
}