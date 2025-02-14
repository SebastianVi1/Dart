import 'package:inventory_management/Product.dart';

class Inventory {
  List<Product> productList = [];

  void addProduct(String name, int stock, double price) {
   
    try {
      var product = Product(name, stock, price);
      productList.add(product);
      print('Product added succesfully');
    } catch (e) {
      print('Error: $e');
    }
  }

  void showProducts(){
    for (var product in productList) {
      print(product.toString());
    }
  }

  Product modifyPrice(String name, double price) {
      var product = searchProduct(name);
      product.setPrice(price);
      return product;
    }


  void deleteProduct(String productName) {
    var product = searchProduct(productName);
    productList.remove(product);
    print('Product deleted.');
  }


  bool makePurchase(String productName, int ammount){
    var product = searchProduct(productName);
    var stock = product.getStock();
    if (product.getStock() < ammount){
      print('No enought stock aviable, just: $stock');
      return false;
    }


    else {
      product.setStock(product.getStock() - ammount);
      var price = product.getPrice() * ammount;
      print('Final price: $price');
      return true;
    }
  }

  double totalWorth() {
    double total = 0;
    for (var product in productList) {
      total += product.getPrice() * product.getStock();
    }

    return total;
  }


  Product searchProduct(productName){
    
  if (productList.isNotEmpty) {
    for (var product in productList) {
    if (productName == product.getName()) {
      return product;
    }
  }

  }
  throw Exception("The product $productName is not in the system.");
  
}

  }

  



