
import 'package:flutter/material.dart';

class HubScreen extends StatelessWidget {
  const HubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hub',style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w900,
        ),),
      ),
    );
  }
}
