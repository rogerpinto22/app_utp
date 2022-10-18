// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:universidad_utp/Camera/camera_page.dart';
import 'package:universidad_utp/ventanas/HomePrincipal.dart';
import 'package:universidad_utp/ventanas/Perfil.dart';
import 'package:universidad_utp/ventanas/Youtube.dart';
import 'package:universidad_utp/ventanas/clases.dart';
import 'package:universidad_utp/ventanas/escaner.dart';
import 'package:universidad_utp/ventanas/Pdf.dart';
import 'package:universidad_utp/ventanas/maestros.dart';
import 'package:universidad_utp/ventanas/ubicacion.dart';
import 'package:universidad_utp/ventanas/whatsap.dart';
import 'package:universidad_utp/ventanas/whatsap_api.dart';
import 'package:universidad_utp/Camera/camera_page.dart';

class HomePage extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  int _selectDrawerItem = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return HomePrincipal();
      case 1:
        return Horario();
      case 2:
        return Maestros();
      case 3:
        return Clases();
      case 4:
        return Scanner();
      case 5:
        return const BtnWhatsAppApi();
      case 6:
        return const TeachersPage();
      case 7:
        return Conocenos();
      case 8:
        return MainScreen();
    }
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

///////////////////////////////////////////////////////////////////////////////////////////
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
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 247, 244, 244),
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.blue,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CameraPage()));
                },
                child: const Text('Editar Perfil'),
              ),
            ),
            /* Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/perfil.jpg',
                      ),
                      fit: BoxFit.cover)),
            ), */
            // ignore: prefer_const_constructors

            UserAccountsDrawerHeader(
              accountName: const Text('Rogelio Pinto May'),
              accountEmail: const Text('a.rogelio.pinto@utponiente.edu.mx'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 0, 128, 248),
                child: Image.asset(
                  'assets/images/perfil.jpg',
                ),
              ),
              onDetailsPressed: (() {}),
              /* decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/perfil.jpg'))), */
              //otherAccountsPicturesSize: ,
            ),

            ListTile(
              title: const Text('Inicio'),
              leading: const Icon(Icons.home),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: const Text('Horario'),
              leading: const Icon(Icons.access_time),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: const Text('Maestros'),
              leading: const Icon(Icons.assignment_ind_rounded),
              selected: (2 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(2);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Clases'),
              leading: const Icon(Icons.laptop),
              selected: (3 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(3);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Scanner'),
              leading: const Icon(Icons.scanner),
              selected: (4 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(4);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Whatsapp'),
              leading: const Icon(Icons.whatsapp),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(5);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Informacíon de Maestros'),
              leading: const Icon(Icons.contact_mail_outlined),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(6);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Ubicación'),
              leading: const Icon(Icons.location_searching),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(7);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Conocenos'),
              leading: const Icon(Icons.play_arrow),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(8);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}

class Home {}
