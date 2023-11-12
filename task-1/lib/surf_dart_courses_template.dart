enum Sex { male, female }

class Sportsman {
  final String name;
  final int age;
  final Sex sex;
  final int weight;
  //final String speech;

  Sportsman({
    required this.name,
    required this.age,
    required this.sex,
    required this.weight,
    //required this.speech,
  });

  void printInfo() {
    print('Name: $name; age: $age; sex: $sex; Weight: $weight;');
  }
}

class ProfessionalSportsman extends Sportsman {
  String speech;
  String category;
  int _totalWins = 0;
  ProfessionalSportsman({
    required super.name,
    required super.age,
    required super.sex,
    required super.weight,
    required this.speech,
    required this.category,
    int totalWins = 0,
  }) : _totalWins = totalWins;

  void winFight() {
    _totalWins++;
    print('$name won a fight');
  }

  void loseFight() {
    _totalWins--;
    print('$name lose a fight');
  }

  void winnerSpeech() {
    print('My speech is - $speech');
  }

  @override
  void printInfo() {
    super.printInfo();
    print('Category $category; total Wins: $_totalWins;');
  }
}

abstract interface class Theory {
  void theoryStudying();
}

class NewSportsman extends Sportsman implements Theory {
  int studyingHour;

  NewSportsman(
      {required super.name,
      required super.age,
      required super.sex,
      required super.weight,
      required this.studyingHour});

  @override
  void theoryStudying() {
    print("$name is studying $studyingHour hours");
  }
}
