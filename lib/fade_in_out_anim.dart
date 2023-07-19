import 'package:flutter/material.dart';


class FadeInOutScreen extends StatefulWidget {
  @override
  _FadeInOutScreenState createState() => _FadeInOutScreenState();
}

class _FadeInOutScreenState extends State<FadeInOutScreen> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade In/Out Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: FlutterLogo(
                size: 150,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text(_isVisible ? 'Fade Out' : 'Fade In'),
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
