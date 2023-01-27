import 'package:academic/home.dart';
import 'package:academic/profile.dart';
import 'package:flutter/material.dart';

Widget footer(BuildContext context, {String? name}) {
  return Container(
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // beranda
        GestureDetector(
          child: Container(
            height: 100,
            child: Column(
              children: [
                Container(
                  height: 70,
                  child: Icon(
                    Icons.home,
                    size: 70,
                  ),
                ),
                Container(
                  child: Text(
                    "Beranda",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage(
                    name: name,
                  );
                },
              ),
            );
          },
        ),
        // berita
        GestureDetector(
          child: Container(
            height: 100,
            child: Column(
              children: [
                Container(
                  height: 70,
                  child: Icon(
                    Icons.newspaper,
                    size: 70,
                  ),
                ),
                Container(
                  child: Text(
                    "Berita",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            // TODO: navigate this
          },
        ),

        // profil
        GestureDetector(
          child: Container(
            height: 100,
            child: Column(
              children: [
                Container(
                  height: 70,
                  child: Icon(
                    Icons.person,
                    size: 70,
                  ),
                ),
                Container(
                  child: Text(
                    "Profil",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Profile(
                    name: name,
                  );
                },
              ),
            );
          },
        ),
      ],
    ),
  );
}
