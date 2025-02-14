class Product {
  String _name;
  int _stock;
  double _price;

  Product(this._name, this._stock, this._price);

  @override
  String toString() {
    return "Name of product: $_name, Stock: $_stock, Price: $_price";
  }

  String getName(){
    return _name;
  }

  void setName(String name){
    _name = name;
  }
  int getStock(){
    return _stock;
  }

  void setStock(int stock){
    _stock = stock;
  }
  double getPrice(){
    return _price;
  }

  void setPrice(double price){
    _price = price;
  }


}
