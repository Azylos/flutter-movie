import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
      width: 500,
      height: 130,
      color: Colors.black ,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.5),
                color: const Color.fromARGB(145, 73, 72, 72),
              ),
              child: TextButton(
                onPressed: (){print('Tous');},
                  child: Text(
                  "Tous".toUpperCase(),
                  ),
              ),
            ),
            TextButton(
              onPressed: (){print('Western');},
                child: Text(
                "Western".toUpperCase(),
                ),
            ),
            TextButton(
              onPressed: (){print('Horreur');},
                child: Text(
                "Horreur".toUpperCase(),
                ),
            ),
                        TextButton(
              onPressed: (){print('Comédie');},
                child: Text(
                "Comédie".toUpperCase(),
                ),
            ),
          ],
        ),
      ),
    );
  }
}