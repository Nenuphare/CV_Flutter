import 'package:flutter/material.dart';

class ExpScreen extends StatelessWidget {
  const ExpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expérience"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: SingleChildScrollView(
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ListTile(
                leading: Container(
                  width: 50, // Set the width as needed
                  height: 50, // Set the height as needed
                  child: Image.network("URL_HERE"),
                ),
                title: const Text(
                  "Lead Dev Google Inc",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
                subtitle: Text(
                  "Lead Dev chez Google, rien a dire de plus, c'est béton sur le CV ça nan?",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
              const ListTile(
                leading: SizedBox(
                  height: 20,
                ),
              ),
              ListTile(
                leading: Container(
                  width: 50, // Set the width as needed
                  height: 50, // Set the height as needed
                  child: Image.network("URL_HERE"),
                ),
                title: const Text(
                  "Project Manager Microsoft",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
                subtitle: Text(
                  "Dev ReactNativ chez microsoft sur les Windows phone, mais le projet a flop alors j'ai du etre licencié",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
              const ListTile(
                leading: SizedBox(
                  height: 20,
                ),
              ),
              ListTile(
                leading: Container(
                  width: 50, // Set the width as needed
                  height: 50, // Set the height as needed
                  child: Image.network("URL_HERE"),
                ),
                title: const Text(
                  "Dev Fullstack MyDigitalSchool",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
                subtitle: Text(
                  "Une de mes premiere experiences avec NodeJS, fabriquation d'une api saaaaaaaaaaale pour tracker les fais et geste des élèves.",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
              const ListTile(
                leading: SizedBox(
                  height: 20,
                ),
              ),
              ListTile(
                leading: Container(
                  width: 50, // Set the width as needed
                  height: 50, // Set the height as needed
                  child: Image.network("URL_HERE"),
                ),
                title: const Text(
                  "Technicien de surface ALDI",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
                subtitle: Text(
                  "J'ai appris a utilisé une serpillère lors de ce CDD, alors pas totalement inutile",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
