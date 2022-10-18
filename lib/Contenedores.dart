import 'package:flutter/material.dart';

class Contenedores extends StatelessWidget {
  const Contenedores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(60.0),
      children: [_basic(), _borders(),],
    );
  }

  _basic() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
        height: 150.0,
      ),
    );
  }

    _borders() {
    return Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
        height: 150.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.blue,
            width: 4.0,
          )

        ),
      ),
    );
  }
  
}
