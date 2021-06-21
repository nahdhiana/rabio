import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Very Good App',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Good App',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
