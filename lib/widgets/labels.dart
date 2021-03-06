import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String ruta;
  final String textoArriba;
  final String textoAbajo;

  const Labels({
    required this.ruta, 
    required this.textoArriba, 
    required this.textoAbajo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(this.textoArriba, style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300)),
          SizedBox(height: 10),
          GestureDetector(
            child: Text(this.textoAbajo, style: TextStyle(color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          ),
        ],
      ),
    );
  }
}