import 'package:flutter/material.dart';
import 'package:movies/widgets/bottom_nav.dart';

class FavorisPage extends StatefulWidget {
  const FavorisPage({super.key});

  @override
  State<FavorisPage> createState() => _FavorisPageState();
}

class _FavorisPageState extends State<FavorisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Mes Favoris"),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNav(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                SizedBox(
                  height: 55,
                  width: 55,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.zero,
                    child: Image.asset(
                      'assets/images/kled.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),   
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Y a-t-il un flic pour sauver le monde ?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Frank drebin est le fils du légendaire inspecteur gaffeur du même nom. S...",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11
                      ),
                    ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: (){print("Suppression");},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.redAccent
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}