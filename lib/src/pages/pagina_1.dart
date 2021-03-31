import 'package:flutter/material.dart';
import 'package:tranciciones_app/src/pages/pagina2.dart';

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, _slideTransition(Pagina2()));
                },
                child: Text('Slide Transition')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, _scaleTransition(Pagina2()));
                },
                child: Text('Scale Transition')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, _rotationTransition(Pagina2()));
                },
                child: Text('Rotation Transition')),
          ],
        ),
      ),
    );
  }

  Route _rotationTransition(Widget child) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curveAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        return RotationTransition(
          turns: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
          child: child,
        );
      },
    );
  }

  Route _scaleTransition(Widget child) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curveAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        return ScaleTransition(
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
          child: child,
        );
      },
    );
  }

  Route _slideTransition(Widget child) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curveAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);

        return SlideTransition(
          position: Tween<Offset>(begin: Offset(-0.3, 1.0), end: Offset.zero)
              .animate(curveAnimation),
          child: child,
        );
      },
    );
  }
}
