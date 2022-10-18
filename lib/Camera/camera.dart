import 'dart:html';

import 'package:flutter/material.dart';
import 'package:universidad_utp/Camera/camera_page.dart';

void main() => runApp(MaterialApp(
      title: 'usando la camara',
      home: CameraPage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        accentColor: Colors.blue,
      ),
    ));
    
  
