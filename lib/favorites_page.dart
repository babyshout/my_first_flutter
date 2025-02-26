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
          for (var favorite in favorites)
            ListTile(
              title: Text("${favorite.first} ${favorite.second}"),
              leading: Icon(Icons.favorite),
            ),
          favorites.map((favorite) => return Text(favorite.first)).toList(),
        ],
      ),
    );
  }
}


class FavoritesPageCodelab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No Favorites yet'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          ),
      ],
    )
    // TODO: implement build
    throw UnimplementedError();
  }

}