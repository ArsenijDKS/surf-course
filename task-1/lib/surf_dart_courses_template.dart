//import 'dart:html';

abstract class OperatingSystem {
  static const String windows = 'Windows';
  static const String macOS = 'MacOS';
  static const String linux = 'Linux';
}

abstract interface class LoudFan {
  bool get isLoudFanOn;
  loudFanOn();
  loudFanOff();
}

abstract class PC {
  final String price;
  final String supply;

  PC({required this.price, required this.supply});

  void fanOn() {
    print("You hear the sound of the fan turning on...");
  }

  void fanOff() {
    print("You hear the sound of the fan turning off...");
  }
}

class StationPC extends PC {
  final String name;
  final String year;
  final String operatingSystem;

  StationPC(
      {required this.operatingSystem,
      required this.name,
      required this.year,
      required super.supply,
      required super.price});

  StationPC.windows({
    required this.name,
    required this.year,
    required super.supply,
    required super.price,
  }) : operatingSystem = OperatingSystem.windows;

  StationPC.macOS({
    required this.name,
    required this.year,
    required super.supply,
    required super.price,
  }) : operatingSystem = OperatingSystem.macOS;

  StationPC.linux({
    required this.name,
    required this.year,
    required super.supply,
    required super.price,
  }) : operatingSystem = OperatingSystem.linux;
}

class LaptopPC extends PC implements LoudFan {
  final String name;
  final String year;

  bool _isLoudFanOn = false;
  bool get isLoudFanOn => _isLoudFanOn;
  final String operatingSystem;

  LaptopPC(
      {required this.name,
      required this.year,
      required this.operatingSystem,
      required super.price,
      required super.supply});

  LaptopPC.windows({
    required this.name,
    required this.year,
    required super.price,
    required super.supply,
  }) : operatingSystem = OperatingSystem.windows;

  LaptopPC.macOS({
    required this.name,
    required this.year,
    required super.price,
    required super.supply,
  }) : operatingSystem = OperatingSystem.macOS;

  LaptopPC.linux({
    required this.name,
    required this.year,
    required super.price,
    required super.supply,
  }) : operatingSystem = OperatingSystem.linux;

  @override
  loudFanOff() {
    _isLoudFanOn = false;
    print("You hear loud fan stopped working");
  }

  @override
  loudFanOn() {
    _isLoudFanOn = true;
    print("You hear loud fan started working");
  }
}
