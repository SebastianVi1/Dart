import 'dart:io';

import 'package:inventory_management/Database.dart';

void main(List<String> arguments) {
  Inventory inventory = Inventory();
  while (true){
    print('');
    print('1. Add Product.');
    print('2. Show Inventory.');
    print('3. Modify Price.');
    print('4. Search Product.');
    print('5. Delete product.');
    print('6. Make Purchase');
    print('7. Show Net Worth');
    print('8. Exit.');
    
    stdout.write('Choose an option');
    int option = int.parse(stdin.readLineSync()!);

    switch (option){
      case 1: 
        stdout.write('Name of the product:');
        String name = stdin.readLineSync()!;
        stdout.write('Stock aviable: ');
        int stock = int.parse(stdin.readLineSync()?? '0');
        stdout.write('Price of the product: ');
        double price = double.parse(stdin.readLineSync() ?? '0');
        inventory.addProduct(name, stock, price);
        break;
      
      case 2:
        inventory.showProducts();
        break;

      case 3: 
        String productName = stdin.readLineSync()!;
        double price =  double.parse(stdin.readLineSync() ?? 'null');
        inventory.modifyPrice(productName, price);
        break;

      case 4: 
        String productName = stdin.readLineSync()!;
        var product = inventory.searchProduct(productName);
        print(product.toString());
        break;

      case 5:
        String productName = stdin.readLineSync()!;
        inventory.deleteProduct(productName);
        break;

      

      case 6:
        String productName = stdin.readLineSync()!;
        int ammount = int.parse(stdin.readLineSync() ?? '0');
        inventory.makePurchase(productName, ammount);
        break;

      case 7:
        print(inventory.totalWorth() );
        break;

      case 8:
        return;

      default:
        print("Invalid option: ");
    }

  }
}
