import 'package:flutter/material.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> hobbies = [
      '- Pêcher des dragons dans la Seine',
      '- Cuisine moléculaire intergalactique',
      '- Exploration de cavernes de cristal',
      '- Voyages temporels en machine à remonter le temps',
      '- Dompter des licornes volantes',
      '- Photographie de fantômes urbains',
      '- Jardinage de plantes carnivores exotiques',
      '- Lecture de grimoires magiques',
      '- Organisation de courses d\'escargots supersoniques',
      '- Fabrication de robots en chocolat',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Infos +"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Hobbies',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 300, // Limite la hauteur de la liste
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: hobbies.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 5.0),
                      child: Text(
                        hobbies[index],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                        softWrap: true,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
