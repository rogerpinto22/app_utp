import 'package:flutter/material.dart';
//we going to import the WhatsApp package
import 'package:whatsapp/whatsapp.dart';

class BtnWhatsAppApi extends StatefulWidget {
  const BtnWhatsAppApi({Key? key});

  @override
  State<BtnWhatsAppApi> createState() => _BtnWhatsAppApiState();
}

class _BtnWhatsAppApiState extends State<BtnWhatsAppApi> {
  //We need to initialize the setup of WhatsApp
  @override
  void initState() {
    super.initState();
    whatsapp.setup(
      //here we gona set the parameters that we got on Facebook for Developers
      accessToken:
          'EAAPsT6kWlY0BAH6yBBZC4cyfJwZB47bBgpPZBBqe6N30YphZAJZAgnal7ET5Joi7D6AJbHlxV4CKeHNMpQtrdp9MQZA1ZAFc1kMg7AOZA5gfgMin7beFjWv24ZC5kVRhSdxEZA2DeNyfOGb5ZBci4XJ2HReRcO9hWnldtwtqcf5WoHCZAIe0hxHGWXapXrZCnXD9DdzTtSHRPBBV0j6jVKUqkvJry8wGbmGLi4OsZD',
      fromNumberId: 107465745465725,
    );
  }

  //then use the setup initialized
  Whatsapp whatsapp = Whatsapp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
                "Push the button for send a WhatsApp Message from your app using the WhatsApp API Cloud."),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                //This code do the work
                await whatsapp.messagesTemplate(
                  to: 529971083053,
                  templateName: "hello_world",
                );
              },
              icon: const Icon(Icons.whatsapp),
              label: const Text("TOCAME. 👇"),
            )
          ],
        ),
      ),
    );
  }
}
