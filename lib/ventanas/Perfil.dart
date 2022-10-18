import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('APP UTP'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
