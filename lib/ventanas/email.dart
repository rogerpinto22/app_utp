import 'package:flutter/material.dart';
import 'package:email_launcher/email_launcher.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  final _subjectController = TextEditingController();
  final _bodyController = TextEditingController();

  @override
  void dispose() {
    _subjectController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  void _launchEmail() async {
    String subject = _subjectController.text;
    String body = _bodyController.text;

    Email email = Email(
        to: ['a.rogelio.pinto@utponiente.edu.mx'],
        subject: subject,
        body: body);
    EmailLauncher.launch(email).then((value) {
      // success
      print(value);
    }).catchError((error) {
      // has error
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Email",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Text(
                      "Por favor compártanos alguna queja o sugerencia",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _subjectController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Asunto',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _bodyController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Escriba el contenido',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            print('Mensaje enviado');
                          },
                          child: const Text('Enviar Email')),
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
}
