abstract class Game {
  String get title;
  double get price;
  String get platform;

  void displayDetails();
  void purchase();
}

class DigitalGame implements Game {
  @override
  final String title;
  @override
  final double price;
  @override
  final String platform;
  final String downloadLink;

  DigitalGame(
      {required this.title,
      required this.price,
      required this.platform,
      required this.downloadLink});

  @override
  void displayDetails() {
    print('Title: $title');
    print('Price: $price');
    print('Platform: $platform');
  }

  @override
  void purchase() {
    print('Purchasing digital game...');
    print('Download link: $downloadLink');
  }
}

class PhysicalGame implements Game {
  @override
  final String title;
  @override
  final double price;
  @override
  final String platform;
  final String shippingAddress;

  PhysicalGame(
      {required this.title,
      required this.price,
      required this.platform,
      required this.shippingAddress});

  @override
  void displayDetails() {
    print('Title: $title');
    print('Price: $price');
    print('Platform: $platform');
  }

  @override
  void purchase() {
    print('Purchasing physical game...');
    print('Shipping address: $shippingAddress');
  }
}

void main() {
  DigitalGame digitalGame = DigitalGame(
      title: 'Cyberpunk 2077',
      price: 59.99,
      platform: 'PC',
      downloadLink: 'EpicGames.com');
  PhysicalGame physicalGame = PhysicalGame(
      title: 'The Last of Us Part II',
      price: 69.99,
      platform: 'PS5',
      shippingAddress: 'Mumbai,India');
  digitalGame.displayDetails();
  digitalGame.purchase();
  physicalGame.displayDetails();
  physicalGame.purchase();
}
