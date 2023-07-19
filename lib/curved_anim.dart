import 'package:flutter/material.dart';

class CurvedAnimationScreen extends StatefulWidget {
  @override
  _CurvedAnimationScreenState createState() => _CurvedAnimationScreenState();
}

class _CurvedAnimationScreenState extends State<CurvedAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 20),
      vsync: this,
    );

    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceOut,
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(curve);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curved Animation Demo'),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: FlutterLogo(
            size: 150,
          ),
        ),
      ),
    );
  }
}
