import 'package:surf_dart_courses_template/surf_dart_courses_template.dart'
    as surf_dart_courses_template;

// Функция для подсчета среднего значения
num averageSum(List<num> list) {
  return list.fold<num>(0, (a, b) => a + b / list.length);
}

void main() {
  // Вычисление актуальной даты
  final currentDate = DateTime.now();

  // Создаем List со всей информацией за все года
  final territories = List.from(surf_dart_courses_template.mapBefore2010.values)
    ..addAll(surf_dart_courses_template.mapAfter2010.values);

  // Создаем Set только с данными machineries из Класса Territory
  final setOfMachineries =
      territories.expand((e) => e).expand((e) => e.machineries).toSet();

  // Создаем List с разницей между актуальной датой и датой выпуска техники
  final agesOfMachinaries = setOfMachineries
      .map((machineries) => currentDate.year - machineries.releaseDate.year)
      .toList();

  // Сортируем list с датами
  agesOfMachinaries.sort((a, b) => b.compareTo(a));

  // Вычисляем среднее значение дат
  final middleAge = (agesOfMachinaries.length / 2).round();

  // Создаем map с получившиемся расчетами
  final Map<String, num> correctAges = {
    'allMachines': averageSum(agesOfMachinaries).round(),
    'oldMachines': averageSum(agesOfMachinaries.sublist(0, middleAge)).round()
  };

  print("Средний возраст всей техники = ${correctAges["allMachines"]}");
  print("Средний возраст 50% старой техники = ${correctAges["oldMachines"]}");
}
