class Pizza {
  static const keyId = 'id';
  static const keyName = 'pizzaName';
  static const keyDescription = 'description';
  static const keyPrice = 'price';
  static const keyImage = 'imageUrl';

  int id = 0;
  String pizzaName = '';
  String description = '';
  double price = 0.0;
  String imageUrl = '';

  Pizza();
  static Pizza? fromJsonOrNull(Map<String, dynamic> json) {
    Pizza pizza = Pizza();
    pizza.id = (json['id'] != null) ? int.tryParse(json['id'].toString())! : 0;
    pizza.pizzaName =
        (json['pizzaName'] != null) ? json['pizzaName'].toString() : '';
    pizza.description =
        (json['description'] != null) ? json['description'].toString() : '';
    pizza.price = (json['price'] != null &&
            double.tryParse(json['price'].toString()) != null)
        ? json['price']
        : 0.0;
    pizza.imageUrl =
        (json['imageUrl'] != null) ? json['imageUrl'].toString() : '';
    if (pizza.id == 0 || pizza.pizzaName.trim() == '') {
      return null;
    }
    return pizza;
  }

  Pizza.fromJson(Map<String, dynamic> json) {
    id = (json['id'] != null) ? int.tryParse(json['id'].toString())! : 0;
    pizzaName = (json['pizzaName'] != null) ? json['pizzaName'].toString() : '';
    description =
        (json['description'] != null) ? json['description'].toString() : '';
    price = (json['price'] != null &&
            double.tryParse(json['price'].toString()) != null)
        ? json['price']
        : 0.0;
    imageUrl = (json['imageUrl'] != null) ? json['imageUrl'].toString() : '';
  }

  Map<String, dynamic> toJson() {
    return {
      keyId: id,
      keyName: pizzaName,
      keyDescription: description,
      keyPrice: price,
      keyImage: imageUrl,
    };
  }
}
