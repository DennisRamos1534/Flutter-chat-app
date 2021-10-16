import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {

  final String text;
  final Function() onPressed;

  const BotonAzul({
    required this.text, 
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        shape: StadiumBorder(),
      ),
      onPressed: this.onPressed, 
      child: Container(
        width: double.infinity,
        height: 45,
        child: Center(
          child: Text(this.text, style: TextStyle(fontSize: 17)),
        ),
      ),
    );
  }
}