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
          child: (Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/nenuphar.webp'),
          ),
          const SizedBox(height: 10),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text(
              'Email: caye.damien@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              'Téléphone : +33781121935',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.maps_home_work),
            title: Text(
              'Localisation : Melun (77)',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.web),
            onTap: () async {
              const url = 'https://github.com/Nenuphare';
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url);
              } else {
                throw 'Impossible de lancer $url';
              }
            },
            title: RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Site Web : '),
                  TextSpan(
                    text: 'https://github.com/Nenuphare',
                  ),
                ],
              ),
            ),
          ),
        ],
      ))),
    );
  }
}
