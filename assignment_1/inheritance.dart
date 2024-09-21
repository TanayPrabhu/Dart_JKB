abstract class Appliance {
  String name;
  bool isOn;
  Appliance(this.name, this.isOn);
  void turnOn() {
    isOn = true;
    print('$name is turned on');
  }

  void turnOff() {
    isOn = false;
    print('$name is turned off');
  }
}

class Television extends Appliance {
  int channel;
  Television(String name, bool isOn, this.channel) : super(name, isOn);
  void changeChannel(int newChannel) {
    channel = newChannel;
    print('Channel changed to $channel');
  }
}

class Refrigerator extends Appliance {
  double temperature;
  Refrigerator(String name, bool isOn, this.temperature) : super(name, isOn);
  void changeTemperature(double newTemperature) {
    var temperature = newTemperature;
    print('Temperature adjusted to $temperature°C');
  }
}

void main() {
  Television tv = Television('Sony TV', false, 1);
  Refrigerator fridge = Refrigerator('LG Fridge', true, 4.0);
  tv.turnOn();
  tv.changeChannel(5);
  fridge.turnOff();
  fridge.changeTemperature(-4);
}
