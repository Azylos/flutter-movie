import 'package:flutter/material.dart';
import 'package:movies/widgets/bottom_nav.dart';
import 'package:movies/widgets/movie_card.dart';
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
          Expanded(
            child: Container(
              width: double.infinity,
              height: 130,
              color: const Color.fromARGB(119, 97, 7, 165),
              child: Padding(
                padding: const EdgeInsets.only(top: 32.5),
                child: Center(
                  child: Text(
                    "Movie App", 
                    style:TextStyle(
                      fontSize: 48,
                      fontFamily: 'SuperTrend',
                      color: Colors.white
                    )
                  ),
                ),
              ),
            ),
          ),

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
          SizedBox(height: 4),
          SizedBox(
            height: 420,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: const [
                  MovieCard(
                    moviePics: 'assets/images/kled.webp',
                    title: 'Drow',
                    synopsis:
                        'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias molestias ipsam maiores eveniet quasi ab, eligendi, libero tempora, fuga temporibus reiciendis. Nostrum vitae placeat consequatur maxime iste nihil natus voluptates! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias molestias ipsam maiores eveniet quasi ab, eligendi, libero tempora, fuga temporibus reiciendis. Nostrum vitae placeat consequatur maxime iste nihil natus voluptates!',
                    rating: 5,
                  ),
                  MovieCard(
                    moviePics: 'assets/images/kled.webp',
                    title: 'Drow 2',
                    synopsis:
                        'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias molestias ipsam maiores eveniet quasi ab, eligendi, libero tempora, fuga temporibus reiciendis. Nostrum vitae placeat consequatur maxime iste nihil natus voluptates! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias molestias ipsam maiores eveniet quasi ab, eligendi, libero tempora, fuga temporibus reiciendis. Nostrum vitae placeat consequatur maxime iste nihil natus voluptates!',
                    rating: 5,
                  ),
                  MovieCard(
                    moviePics: 'assets/images/kled.webp',
                    title: 'Drow 3',
                    synopsis:
                        'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias molestias ipsam maiores eveniet quasi ab, eligendi, libero tempora, fuga temporibus reiciendis. Nostrum vitae placeat consequatur maxime iste nihil natus voluptates! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias molestias ipsam maiores eveniet quasi ab, eligendi, libero tempora, fuga temporibus reiciendis. Nostrum vitae placeat consequatur maxime iste nihil natus voluptates!',
                    rating: 5,
                  ),
                  MovieCard(
                    moviePics: 'assets/images/kled.webp',
                    title: 'Drow 4',
                    synopsis:
                        'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias molestias ipsam maiores eveniet quasi ab, eligendi, libero tempora, fuga temporibus reiciendis. Nostrum vitae placeat consequatur maxime iste nihil natus voluptates! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias molestias ipsam maiores eveniet quasi ab, eligendi, libero tempora, fuga temporibus reiciendis. Nostrum vitae placeat consequatur maxime iste nihil natus voluptates!',
                    rating: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
