// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:universidad_utp/Ventanas%20Home/Costo_educativo.dart';
import 'package:universidad_utp/Ventanas%20Home/Oferta_educativa.dart';
import 'package:universidad_utp/ventanas/ubicacion.dart';
import 'Appbar/custom_app_bar.dart';
import 'package:flutter/src/widgets/container.dart';

import 'main.dart';

class Inicioutp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Utp Movil',
            style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w800)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help_center),
            onPressed: () {},
          ),
          //////UBICACCION////////////////
          IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Conocenos(),
                  ));
            },
          ),
          IconButton(
            icon: Icon(Icons.contact_mail),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.login_rounded),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GoogleAthenticador()));
            },
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            width: 480,
            height: 220,
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/C_LABORATORIOS.jpg'))),
          ),
          /////////////////////////////////////////// Contenedores de informacion  ///////////////////////
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Center(
                    child: Container(
                      width: 380,
                      height: 250,
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 4, 158, 247),
                              Color(0xFF1C256E),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(19.0),
                          image: DecorationImage(
                              image: AssetImage('assets/images/utp.png'))),
                    ),
                  ),
                ),
                // Header
                /*   Container(
                  width: 50,
                  height: 10,
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ), */
                ////////////////////////////////OFERTA EDUCATIVAA//////////////////////////////
                Container(
                  child: Center(
                    child: Container(
                      child: Text(
                        'Title 1',
                      ),
                      width: 380,
                      height: 250,
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color.fromARGB(255, 4, 158, 247),
                            Color(0xFF1C256E),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(19.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/oferta.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                /////////////////////////////////////////////////////////////////////////
                Container(
                  child: Center(
                    child: Container(
                      // ignore: sort_child_properties_last
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Horario1()));
                        },
                        child: const Text('Ofertas Educativas',
                        style: TextStyle( color: Colors.white),

                        ),
                      ),
                      width: 380,
                      height: 250,
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color.fromARGB(255, 4, 158, 247),
                            Color(0xFF1C256E),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(19.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/oferta.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                ///////////////////////////////////////////////
                Container(
                  child: Center(
                    child: Container(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                              Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TestBasicScreen()));

                        },
                        child: const Text('Costo educativo',
                        style: TextStyle( color: Colors.white),
                        ),
                        
                      ),
                      width: 380,
                      height: 250,
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color.fromARGB(255, 4, 158, 247),
                            Color(0xFF1C256E),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(19.0),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/colegiatura.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
