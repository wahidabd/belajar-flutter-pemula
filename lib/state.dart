import 'package:flutter/material.dart';

// StatefulWidget
class BiggerText extends StatefulWidget{
  final String text;

  const BiggerText({required this.text});

  @override
  _BiggerTextState createState() => _BiggerTextState();

}

class _BiggerTextState extends State<BiggerText>{
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            widget.text,
            style: TextStyle(fontSize: _textSize)
        ),
        ElevatedButton(
            child: Text('Perbesar'),
            onPressed: () {
              setState(() {
                _textSize = 32.0;
              });
            }
        )
      ],
    );
  }
}

// StatelessWidget
class Heading extends StatelessWidget{

  final String text;

  Heading({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

}