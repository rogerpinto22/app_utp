import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Llamadas_api extends StatefulWidget {
  const Llamadas_api({Key? key}) : super(key: key);

  @override
  _Llamadas_api createState() => _Llamadas_api();
}

class _Llamadas_api extends State<Llamadas_api> {
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "9971083053";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _numberCtrl,
                decoration: const InputDecoration(labelText: "Phone Number"),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              child: const Text("Test Call"),
              onPressed: () async {
                FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
