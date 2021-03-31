import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.pinkAccent,
      ),
    );
  }
}
