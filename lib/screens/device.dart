import "package:flutter/material.dart";
import "exp.dart";
import "formation.dart";
import "infos.dart";
import "profile.dart";
import "skills.dart";

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0;
  final List<Widget> _screenList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Flutter App"),
      ),
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentScreen,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Liste',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Truc',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Bruxelles',
          ),
        ],
        selectedItemColor:
            Colors.blue, // Couleur des icônes et du texte sélectionné
        unselectedItemColor:
            Colors.grey, // Couleur des icônes et du texte non sélectionné
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
