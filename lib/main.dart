import 'package:flutter/material.dart';
import 'package:tranciciones_app/src/pages/pagina2.dart';
import 'package:tranciciones_app/src/pages/pagina_1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Titulo',
      initialRoute: 'pagina1',
      routes: {'pagina1': (_) => Pagina1(), 'pagina2': (_) => Pagina2()},
    );
  }
}
