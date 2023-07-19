import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailScreen()),
          );
        },
        child: const Hero(
          tag: 'logo',
          child: FlutterLogo(
            size: 150,
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: const Center(
        child: Hero(
          tag: 'logo',
          child: FlutterLogo(
            size: 300,
          ),
        ),
      ),
    );
  }
}
