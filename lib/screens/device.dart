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
  final List<Widget> _screenList = [
    ProfileScreen(),
    ExpScreen(),
    FormationScreen(),
    SkillsScreen(),
    InfosScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentScreen,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Experiences',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Studies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Infos+',
          ),
        ],
        selectedItemColor:
            Colors.deepOrange, // Couleur des icônes et du texte sélectionné
        unselectedItemColor:
            Colors.white, // Couleur des icônes et du texte non sélectionné
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
