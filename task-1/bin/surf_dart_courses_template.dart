import 'package:surf_dart_courses_template/surf_dart_courses_template.dart'
    as surf_dart_courses_template;

void main(List<String> arguments) async {
  final kickboxer1 = surf_dart_courses_template.ProfessionalSportsman(
    name: 'Zach Apple',
    age: 26,
    sex: surf_dart_courses_template.Sex.male,
    weight: 81,
    speech: " I will win!",
    category: 'light',
  );

  kickboxer1.winnerSpeech();
  kickboxer1.printInfo();
  kickboxer1.winFight();
  kickboxer1.printInfo();

  final kickboxer2 = surf_dart_courses_template.NewSportsman(
    name: "Maria",
    age: 16,
    sex: surf_dart_courses_template.Sex.female,
    weight: 56,
    studyingHour: 12,
  );

  kickboxer2.printInfo();
  kickboxer2.theoryStudying();
}
