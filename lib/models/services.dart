class ServicesList {
  var service;
  var image;
  var price;

  ServicesList({
    required this.service,
    required this.image,
    required this.price,
  });
}

var servicesProp = [
  ServicesList(
    service: 'Photographer',
    image: 'images/photo.jpg',
    price: 'Start From 50 Usd',
  ),
  ServicesList(
    service: 'Music',
    image: 'images/music.jpg',
    price: 'Start From 80 Usd',
  ),
  ServicesList(
    service: 'Wedding Dress',
    image: 'images/weddingdress.jpg',
    price: 'Start From 40 Usd',
  ),
  ServicesList(
    service: 'Cathering',
    image: 'images/cathering.jpg',
    price: 'Start From 60 Usd',
  ),
];
