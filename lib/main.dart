// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_new, sort_child_properties_last, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:universidad_utp/Athenticator.dart';
import 'package:universidad_utp/InicioUtp.dart';
import 'package:universidad_utp/home.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: Inicioutp(),
  ));
}

class GoogleAthenticador extends StatelessWidget {
  @override
  final username = TextEditingController();
  final password = TextEditingController();

  String use = "";
  String pass = "";

  // ignore: prefer_final_fields
  bool _loading = false;

  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: <Widget>[
            ///// IMAGEN DE FONDO DE LOGIN ////////
            Container(
              height: 780,
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/fondoutp.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
              ),
            ),

            //// BOX DE INICIO/////

            Transform.translate(
              offset: Offset(0, -40),
              child: Center(
                child: SingleChildScrollView(
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 60, bottom: 0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35,
                        vertical: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  child: Title(
                                      color: Colors.black,
                                      child: Text(
                                        'Bienvenido a App UTP',
                                        style: TextStyle(fontSize: 20.0),
                                      ))),
                              TextField(
                                controller: username,
                                decoration:
                                    InputDecoration(labelText: "USUARIO:"),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              TextField(
                                controller: password,
                                decoration:
                                    InputDecoration(labelText: "CONTRASEÑA:"),
                                obscureText: true,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  print('Rogelio pinto');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Iniciar Sesión"),
                                    if (_loading == true)
                                      Container(
                                        height: 20,
                                        width: 20,
                                        margin: const EdgeInsets.only(left: 20),
                                        child: CircularProgressIndicator(),
                                      ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("¿No estas registrado?"),
                                  TextButton(
                                    child: Text('Registrarse'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Acceder con correo institucional "),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ////BUTTON OF GOOGLE SIGN IN SESION
                              MaterialButton(
                                height: 16.0,
                                minWidth: 150.0,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(40.0),
                                ),
                                padding: const EdgeInsets.only(top: 10.0),
                                onPressed: () async {
                                  User? user =
                                      await Authenticator.iniciarSesion(
                                          context: context);
                                  // ignore: avoid_print
                                  print(user?.displayName);
                                  // ignore: use_build_context_synchronously
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ));
                                },
                                color: Colors.green,
                                child: Icon(FontAwesomeIcons.google),
                                textColor: Colors.white,
                              ),

                              Container(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Mas información en"),
                                  TextButton(
                                    child: Text('www.utponiente.edu.mx'),
                                    onPressed: () {
                                      launch(
                                          "http://www.utponiente.edu.mx/utp/index.php");
                                    },
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}



/* return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () async {
            User? user = await Authenticator.iniciarSesion(context: context);
            print(user?.displayName);
          },
          color: Colors.red,
          child: Icon(FontAwesomeIcons.google),
          textColor: Colors.white,
        ),
      ),
    ); */





/*     MaterialButton(
          onPressed: () async {
            User? user = await Authenticator.iniciarSesion(context: context);
            print(user?.displayName);
            // ignore: use_build_context_synchronously
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          },
          color: Colors.green,
          child: Icon(FontAwesomeIcons.google),
          textColor: Colors.white,
        ), */