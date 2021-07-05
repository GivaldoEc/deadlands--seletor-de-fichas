import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String message;

  ErrorPage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
          child: Column(
        children: [Text(message)],
      )),
    ); //TO DO: Implementar uma página de erro melhor
  }
}
