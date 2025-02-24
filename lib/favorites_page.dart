import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/main.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favorites = appState.favorites;

    return Center(
      child: ListView(
        children: [
          ListTile(
            title: Text("123"),
            leading: Icon(Icons.icecream_outlined),
            onTap: () {
              print("hello");
            },
          ),
          for (var favorite in favorites) Text("${favorite.first} ${favorite.second}"),
          // favorites.map((favorite) => Text(favorite.first)).toList(),
        ],
      ),
    );
  }
}
