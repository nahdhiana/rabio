import 'package:flutter/cupertino.dart';

class servicesList {
  var service;
  var image;
  var price;

  servicesList({
    required this.service,
    required this.image,
    required this.price,
  });
}

var servicesProp = [
  servicesList(
    service: 'Photographer',
    image: 'images/photo.jpg',
    price: 'Start From 50 Usd',
  ),
  servicesList(
    service: 'Music',
    image: 'images/music.jpg',
    price: 'Start From 80 Usd',
  ),
  servicesList(
    service: 'Wedding Dress',
    image: 'images/weddingdress.jpg',
    price: 'Start From 40 Usd',
  ),
  servicesList(
    service: 'Cathering',
    image: 'images/cathering.jpg',
    price: 'Start From 60 Usd',
  ),
];
