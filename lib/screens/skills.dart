import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> skills = [
      {'name': 'Développement Front-End', 'level': 5},
      {'name': 'Développement Back-End', 'level': 4},
      {'name': 'Développement Full-Stack', 'level': 5},
      {'name': 'Développement Mobile iOS', 'level': 3},
      {'name': 'Développement Mobile Android', 'level': 3},
      {'name': 'UX/UI Design', 'level': 4},
      {'name': 'Gestion de Base de Données', 'level': 4},
      {
        'name': 'Intégration Continue et Déploiement Continu (CI/CD)',
        'level': 5
      },
      {'name': 'Tests Unitaires et d\'Intégration', 'level': 4},
      {'name': 'Optimisation des Performances', 'level': 4},
      {'name': 'Sécurité Web', 'level': 5},
      {'name': 'API RESTful', 'level': 5},
      {'name': 'GraphQL', 'level': 3},
      {'name': 'Développement avec Flutter', 'level': 5},
      {'name': 'Développement avec React Native', 'level': 4},
      {'name': 'Développement avec Vue.js', 'level': 4},
      {'name': 'Développement avec Angular', 'level': 3},
      {'name': 'Développement avec Django', 'level': 4},
      {'name': 'Développement avec Node.js', 'level': 5},
      {'name': 'Développement avec Laravel', 'level': 3},
      {'name': 'Développement avec Ruby on Rails', 'level': 2},
      {'name': 'Développement avec Spring Boot', 'level': 4},
      {'name': 'Développement avec Kotlin', 'level': 3},
      {'name': 'Développement avec Swift', 'level': 4},
      {'name': 'Développement avec JavaScript', 'level': 5},
      {'name': 'Développement avec TypeScript', 'level': 4},
      {'name': 'Développement avec Python', 'level': 5},
      {'name': 'Développement avec PHP', 'level': 4},
      {'name': 'Développement avec Java', 'level': 5},
      {'name': 'Développement avec C#', 'level': 4},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Compétences"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: skills.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                skills[index]['name'],
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Row(
                children: List.generate(5, (i) {
                  return Icon(
                    i < skills[index]['level'] ? Icons.star : Icons.star_border,
                    color: Colors.yellow,
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
