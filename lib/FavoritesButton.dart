import 'package:flutter/material.dart';

class FavoritesButton extends StatefulWidget {
  @override
  _FavoritesPageState createState() => new _FavoritesPageState();
}
class _FavoritesPageState extends State<FavoritesButton> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
            color: Colors.amber,
            iconSize: 30,
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }
}