import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CAYE Damien"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: SizedBox(
          height: 200.0,
          child: (Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/nenuphar.webp'),
              ),
              const SizedBox(height: 20),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Nom : BUSSU Diego',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  'Email : jokonito06@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'Téléphone : +33781511556',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.maps_home_work),
                title: Text(
                  'Localisation : Vincennes (94)',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.web),
                onTap: () async {
                  const url = 'https://diegobussu.github.io';
                  if (await canLaunchUrlString(url)) {
                    await launchUrlString(url);
                  } else {
                    throw 'Impossible de lancer $url';
                  }
                },
                title: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black, // Couleur du texte "Site Web :"
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Site Web : '),
                      TextSpan(
                        text: 'diegobussu.github.io',
                        style: TextStyle(
                          color: Colors.blue, // Couleur du texte de l'URL
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'À propos :',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Actuellement étudiant en troisième année du Bachelor Développeur Web à l\'école My Digital School de Paris, je cumule mon parcours académique avec une expérience professionnelle en tant que concepteur développeur à la CPAM du Val-de-Marne (94).',
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ],
          ))),
    );
  }
}
// 