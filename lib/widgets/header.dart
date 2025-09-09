import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
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
    );
  }
}