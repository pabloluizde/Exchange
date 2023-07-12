import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("Erro ao carregar dados :(",
            style: TextStyle(color: Colors.amber, fontSize: 25.0),
            textAlign: TextAlign.center));
  }
}
