import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

const List<Product> allProducts = [
  Product(id: '1', title: 'Groovy Shorts', price: 12, image: 'assets/products/shorts.png'),
  Product(id: '2', title: 'Druim', price: 13, image: 'assets/products/drum.png'),
  Product(id: '3', title: 'Guitar', price: 14, image: 'assets/products/guitar.png'),
  Product(id: '4', title: 'Jeans', price: 15, image: 'assets/products/jeans.png'),
  Product(id: '5', title: 'Karati', price: 116, image: 'assets/products/karati.png'),
  Product(id: '6', title: 'Suitcase', price: 13, image: 'assets/products/suitcase.png'),
];

final productsProvider = Provider((ref){
  return allProducts;
});

final reducedProductsProvider = Provider((ref){
return allProducts.where((product)=> product.price <15);
});