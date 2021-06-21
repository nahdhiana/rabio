class weddingHall {
  var price;
  var name;
  var image;

  weddingHall({
    required this.price,
    required this.name,
    required this.image,
  });
}

var weddingHallProp = [
  weddingHall(
      price: '100/event',
      name: 'Simple Hall',
      image: 'images/wedding-altar.jpg'),
  weddingHall(
      price: '200/event',
      name: 'Italian Hall',
      image: 'images/italian-hall.jpg'),
  weddingHall(
      price: '250/event',
      name: 'Banquet Hall',
      image: 'images/banquet-hall.jpg'),
  weddingHall(
    price: '275/event',
    name: 'Hotel Hall',
    image: 'images/wedding-hall.jpg',
  ),
  weddingHall(
    price: '300/event',
    name: 'Restaurant Hall',
    image: 'images/restaurant-hall.jpg',
  ),
  weddingHall(
    price: '315/event',
    name: 'Classic Hall',
    image: 'images/white-daylight.jpg',
  ),
  weddingHall(
      price: '400/event',
      name: 'Luxurius Hall',
      image: 'images/luxurious-hall.jpg'),
];
