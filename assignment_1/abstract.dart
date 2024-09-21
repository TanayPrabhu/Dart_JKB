abstract class Sport {
  String name;
  int numPlayers;
  void play();
  Sport(this.name, this.numPlayers);
}

class Carrom extends Sport {
  Carrom(String name, int numPlayers) : super(name, numPlayers);
  @override
  void play() {
    print('Playing carrom...');
  }
}

class Football extends Sport {
  Football(String name, int numPlayers) : super(name, numPlayers);
  @override
  void play() {
    print('Playing football...');
  }
}

void main() {
  Carrom carrom = Carrom("Carrom", 5);
  Football football = Football('football', 11);
  print('Name: ${carrom.name}, Number of players: ${carrom.numPlayers}');
  carrom.play();
  print('Name: ${football.name}, Number of players: ${football.numPlayers}');
  football.play();
}
