import 'package:flutter/material.dart';

class FormationScreen extends StatelessWidget {
  const FormationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formation"),
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
                  "Bachelor Dev Web 3ème année",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
                subtitle: Text(
                  "Cette année, A MDS Paris",
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
                  "BTS Services Informatiques Aux Organisation",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
                subtitle: Text(
                  "A Melun, jusqu'en 2023",
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
                  "Licence Biologie-Chimie",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
                subtitle: Text(
                  "A évry, en 2019",
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
                  "Baccalauréat Scientifique",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
                subtitle: Text(
                  "Cesson, en 2018",
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
