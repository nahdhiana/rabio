class WeddingHall {
  var price;
  var name;
  var image;

  WeddingHall({
    required this.price,
    required this.name,
    required this.image,
  });
}

var weddingHallProp = [
  WeddingHall(
      price: '100/event',
      name: 'Simple Hall',
      image: 'images/wedding-altar.jpg'),
  WeddingHall(
      price: '200/event',
      name: 'Italian Hall',
      image: 'images/italian-hall.jpg'),
  WeddingHall(
      price: '250/event',
      name: 'Banquet Hall',
      image: 'images/banquet-hall.jpg'),
  WeddingHall(
    price: '275/event',
    name: 'Hotel Hall',
    image: 'images/wedding-hall.jpg',
  ),
  WeddingHall(
    price: '300/event',
    name: 'Restaurant Hall',
    image: 'images/restaurant-hall.jpg',
  ),
  WeddingHall(
    price: '315/event',
    name: 'Classic Hall',
    image: 'images/white-daylight.jpg',
  ),
  WeddingHall(
      price: '400/event',
      name: 'Luxurius Hall',
      image: 'images/luxurious-hall.jpg'),
];
