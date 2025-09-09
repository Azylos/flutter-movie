import 'package:flutter/material.dart';
import 'package:movies/widgets/bottom_nav.dart';
import 'package:movies/widgets/feed.dart';
import 'package:movies/widgets/header.dart';
import 'package:movies/widgets/nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const BottomNav(),
      body: Column(
        children: [
          Header(),
          Nav(),
          // section image a faire en carrousel
          Stack(
            children: [
              Container(
                width: double.infinity,
                color: Colors.black,
                child: Image.asset(
                  'assets/images/kled.webp',
                  width: 200,
                  height: 200,
                  // fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 110,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(104, 255, 255, 255),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Feed(),  
          // BottomNav()
        ],
      )
    );
  }
}