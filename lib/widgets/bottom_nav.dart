import 'package:flutter/material.dart';

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
              print('movie liker');
            },
            icon: const Icon(Icons.favorite, color: Colors.deepPurpleAccent),
          ),
          IconButton(
            onPressed: () {
              print('home');
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
