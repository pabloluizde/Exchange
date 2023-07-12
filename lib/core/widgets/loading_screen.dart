import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("Carregando dados...",
            style: TextStyle(color: Colors.amber, fontSize: 25.0),
            textAlign: TextAlign.center));
  }
}
