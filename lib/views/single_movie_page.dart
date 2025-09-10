import 'package:flutter/material.dart';
import 'package:movies/widgets/bottom_nav.dart';

class SingleMoviePage extends StatefulWidget {
  const SingleMoviePage({super.key});

  @override
  State<SingleMoviePage> createState() => _SingleMoviePageState();
}

class _SingleMoviePageState extends State<SingleMoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const BottomNav(),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/kled.webp',
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 18,
                left: 70,
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 55,
                        height: 55,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(15),
                          child: Image.asset(
                            'assets/images/kled.webp',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text("Movie",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32
                        ),
                      )
                    ],
                  ),
                )
              )
            ]
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            //nav
            child: Row(
              children: [
                OutlinedButton.icon(
                  onPressed: (){}, 
                  icon: Icon(Icons.arrow_back, 
                    size: 16,
                    color: Colors.white
                  ),
                  label: Text('Retour', 
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                TextButton.icon(
                  onPressed: (){}, 
                  icon: Icon(
                    Icons.favorite_border, 
                    size: 16,
                    color: Colors.white
                  ),
                  label: Text('Favori',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: SingleChildScrollView(
                child: Text("Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias molestias ipsam maiores eveniet quasi ab, eligendi, libero tempora, fuga temporibus reiciendis. Nostrum vitae placeat consequatur maxime iste nihil natus voluptates! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias molestias ipsam maiores eveniet quasi ab, eligendi, libero tempora, fuga temporibus reiciendis. Nostrum vitae placeat consequatur maxime iste nihil natus voluptates!",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Icon(Icons.local_movies, color: Colors.amberAccent, size: 16,),
                SizedBox(width: 6),
                Text("Type",
                style: TextStyle(
                  color: Colors.amberAccent
                  ),
                ),
                SizedBox(width: 18),
                Icon(Icons.access_time, color: Colors.amberAccent, size: 16,),
                SizedBox(width: 6),
                Text("2h 15min",
                style: TextStyle(
                  color: Colors.amberAccent
                  ),
                ),
                SizedBox(width: 18),
                Icon(Icons.star, color: Colors.amberAccent, size: 16,),
                SizedBox(width: 6),
                Text("2",
                style: TextStyle(
                  color: Colors.amberAccent
                  ),
                ),
              ],
            ),
          ),
          //autre film
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SingleMoviePage()),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/kled.webp', // remplace par la liste de films
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}