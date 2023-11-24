import 'package:surf_dart_courses_template/surf_dart_courses_template.dart'
    as surf_dart_courses_template;

void main(List<String> arguments) async {
  final articles = '''
1,хлеб,Бородинский,500,5
2,хлеб,Белый,200,15
3,молоко,Полосатый кот,50,53
4,молоко,Коровка,50,53
5,вода,Апельсин,25,100
6,вода,Бородинский,500,5
''';

  // Список товаров
  final products = surf_dart_courses_template.convertToList(
    articles,
    surf_dart_courses_template.ProductListFromStringConverter(),
  );

  // Фильтр по категории
  final filteredProductsByCategory = surf_dart_courses_template.applyFilter(
    products,
    surf_dart_courses_template.FilterProductByCategory('молоко'),
  );
  surf_dart_courses_template.printProductList(
      filteredProductsByCategory, '\nКатегория "молоко"');

  // Фильтр по цене
  final filteredProductsByPrice = surf_dart_courses_template.applyFilter(
    products,
    surf_dart_courses_template.FilterProductByPriceNotHigher(200),
  );
  surf_dart_courses_template.printProductList(
      filteredProductsByPrice, '\nТовары с ценой не больше 200 рублей');

  // Фильтр по остатку на складе
  final filteredProductsByQuantity = surf_dart_courses_template.applyFilter(
    products,
    surf_dart_courses_template.FilterProductByQuantity(50),
  );
  surf_dart_courses_template.printProductList(
      filteredProductsByQuantity, '\nТовары с остатком меньше 50 шт');
}
