import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:convert';

import 'email.dart';

class TeachersPage extends StatefulWidget {
  const TeachersPage({Key? key});

  @override
  State<TeachersPage> createState() => _TeachersPageState();
}

/* final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();

Future sendEmail() async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  const serviceId = "service_07wxrv7";
  const templateId = "template_p2ipvir";
  const userId = "service_07wxrv7";
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "service_id": serviceId,
        "Template_id": templateId,
        "user_id": userId,
        "template_params": {
          "name": nameController.text,
          "subject": subjectController.text,
          "message": messageController.text,
          "user_email": emailController.text,
        }
      }));
  return response.statusCode;
} */

class _TeachersPageState extends State<TeachersPage> {
  //Variables de textfiets
  var messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            //:::: DISIGN :::://
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/utp.png',
                          ),
                          radius: 60.0,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Nombre:",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("Rogelio de Jesus Pinto May"),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Correo:",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("a.rogelio.pinto@utponiente.edu.mx"),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Num Tel.:",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("9971083053")
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            TextButton.icon(
                                onPressed: _showWappMenu,
                                icon: const Icon(Icons.whatsapp),
                                label: const Text("WhatsApp")),
                            TextButton.icon(
                                onPressed: () async {
                                  FlutterPhoneDirectCaller.callNumber(
                                      "9971083053");
                                },
                                icon: const Icon(Icons.call),
                                label: const Text("LLamada")),
                            TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AboutUsPage(),
                                      ));
                                },
                                icon: const Icon(Icons.email),
                                label: const Text("Gmail")),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showWappMenu() {
    showDialog(
        context: context,
        builder: (buildcontext) {
          return AlertDialog(
            title: const Text("Enviar WhatsApp"),
            content: const Text("Enviar mensaje a\n --Nombre del MAESTRO"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  keyboardType: TextInputType.multiline,
                  controller: messageController,
                  maxLines: null,
                  decoration: const InputDecoration.collapsed(
                      hintText: "Escribe un mensaje breve y cordial...",
                      focusColor: Colors.green,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ))),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                  templateWhatsApp();
                },
                label: const Text("Continuar..."),
                icon: const Icon(Icons.next_plan),
              )
            ],
          );
        });
  }

  //WhatsApp Message Template
  void templateWhatsApp() async {
    var sms = messageController.text;
    var whatsappNumber = "+529971083053";
    var whatsappURL = "whatsapp://send?phone=$whatsappNumber&text=$sms";

    await launchUrlString(whatsappURL).then(_close());
  }

  _close() {
    Navigator.pop(context);
  }
}



/* async {
                                  FlutterPhoneDirectCaller.callNumber(
                                      "9971083053");
                                }, */