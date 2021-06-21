import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          children: [
            Wrap(
              direction: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.all(3.0),
                  color: Colors.white54,
                  width: size.width / 2,
                  height: size.height / 3,
                  child: Image.asset(
                    'images/bride-park.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.0),
                  color: Colors.white54,
                  width: size.width / 2,
                  height: size.height / 3,
                  child: Image.asset(
                    'images/bride-park2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.0),
                  color: Colors.white54,
                  width: size.width / 2,
                  height: size.height / 3,
                  child: Image.asset(
                    'images/bride-park3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.0),
                  color: Colors.white54,
                  width: size.width / 2,
                  height: size.height / 3,
                  child: Image.asset(
                    'images/bride-building.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.0),
                  color: Colors.white54,
                  width: size.width / 2,
                  height: size.height / 3,
                  child: Image.asset(
                    'images/bride-sea.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.0),
                  color: Colors.white54,
                  width: size.width / 2,
                  height: size.height / 3,
                  child: Image.asset(
                    'images/bride-nature.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
