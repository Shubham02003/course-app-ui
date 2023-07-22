import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Learn',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
