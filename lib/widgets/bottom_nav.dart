import 'package:flutter/material.dart';
import 'package:movies/views/favoris_page.dart';
import 'package:movies/views/home.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavorisPage()),
              );
            },
            icon: const Icon(Icons.favorite, color: Colors.deepPurpleAccent),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            icon: const Icon(Icons.home, color: Colors.deepPurpleAccent),
          ),
          IconButton(
            onPressed: () {
              print('profil');
            },
            icon: const Icon(Icons.person, color: Colors.deepPurpleAccent),
          ),
        ],
      ),
    );
  }
}
