import 'package:flutter/material.dart';

class TweenAnimationScreen extends StatefulWidget {
  @override
  _TweenAnimationScreenState createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen> {
  double _fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation Builder Demo'),
      ),
      body: Center(
        child:
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 20.0, end: _fontSize),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, double size, Widget? child) {
            return Text(
              'Tween Animation',
              style: TextStyle(fontSize: size),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _fontSize = _fontSize == 20.0 ? 40.0 : 20.0;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
