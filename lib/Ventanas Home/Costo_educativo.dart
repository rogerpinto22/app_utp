// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TestBasicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Costo Educativo"),
      ),
      body: SafeArea(
        child: Center(


        ),
      ),
    );
  }
}




/* class CostosEducativos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Costos Educativos'),
      ),
      body: SafeArea(       
          child: Center(
        child: WebView(
          initialUrl: '',
          javascriptMode: JavascriptMode.unrestricted ,
        ),
      )),
    );
  }
} */
