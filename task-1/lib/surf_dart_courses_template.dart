class Product {
  final int id;
  final String category;
  final String name;
  final double price;

  final double quantity;

  Product({
    required this.id,
    required this.category,
    required this.name,
    required this.price,
    required this.quantity,
  });
}

abstract interface class ListDataConverter<T extends Object, V> {
  List<T> convertToListData(V data);
}

class ProductListFromStringConverter
    implements ListDataConverter<Product, String> {
  const ProductListFromStringConverter();

  @override
  List<Product> convertToListData(String data) {
    var products = data
        .split('\n')
        .where((element) => element.trim().isNotEmpty)
        .map((element) {
      final rowData = element.split(',');

      return Product(
        id: int.parse(rowData[0]),
        category: rowData[1],
        name: rowData[2],
        price: double.parse(rowData[3]),
        quantity: double.parse(rowData[4]),
      );
    }).toList();

    return products;
  }
}

List<T> convertToList<T extends Object, V>(
    V data, ListDataConverter<T, V> converter) {
  return converter.convertToListData(data);
}

abstract interface class Filter<T> {
  bool apply(T value);
}

class FilterProductByCategory implements Filter<Product> {
  final String category;

  FilterProductByCategory(this.category);

  @override
  bool apply(Product product) {
    return product.category.trim() == category.trim();
  }
}

class FilterProductByQuantity implements Filter<Product> {
  final double quantity;

  FilterProductByQuantity(this.quantity);

  @override
  bool apply(Product product) {
    return product.quantity < quantity;
  }
}

class FilterProductByPriceNotHigher implements Filter<Product> {
  final double price;

  FilterProductByPriceNotHigher(this.price);

  @override
  bool apply(Product product) {
    return product.price <= price;
  }
}

List<Product> applyFilter(List<Product> products, Filter<Product> filter) {
  return products.where(filter.apply).toList();
}

abstract interface class IListDataConverter<T extends Object, V> {
  List<T> convertToListData(V data);
}

void printProductList(List<Product> products, [String messageInfo = '']) {
  if (messageInfo.isNotEmpty) {
    print(messageInfo);
  }

  for (int i = 0; i < products.length; i++) {
    final product = products[i];
    print(
        '${product.id}  ${product.category} ${product.name} ${product.price} рублей ${product.quantity} шт');
  }
}
