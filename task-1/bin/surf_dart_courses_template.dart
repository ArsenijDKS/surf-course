class nullBody {
  final String type;
  final String brain;
  final String heart;
  String? appendix;
  nullBody({
    required this.type,
    required this.brain,
    required this.heart,
  });

  @override
  String toString() {
    var aboutMe = ''' Type: $type Brain: $brain Heart: $heart ''';
    return aboutMe;
  }

  void live() {
    print('$type is living');
  }
}

class water extends nullBody {
  water({
    required super.type,
    required super.brain,
    required super.heart,
  });

  void swim() {
    print('$type is swimming');
  }
}

void main() {
  final human = nullBody(type: "Human", brain: "yes", heart: "yes");
  print(human);
  human.live();
  final fish = water(type: "salmon", brain: "small", heart: "yes");
  print(fish);
  fish.swim();
}
