class Animal {
  int? numberOfPaws;//initially null
  String color;
  String name;


  Animal(this.numberOfPaws, this.color, this.name){
    print("this is the constructor of the animal class");
  }
  void showInfo(){
    print('Race of the animal: $name, Color of the animal: $color, Number of paws: $numberOfPaws');
  }
  
}


class Dog extends Animal {
  String race;
  int age;
  
  Dog(this.race,this.age, int numberOfPaws, String color, String name) : super(numberOfPaws, color, name){
    print('this is the constructor of the dog');

  }

  @override
  void showInfo(){
    print("overidden info");

  }
}
  
void main(){
  Animal animal = new Animal(3, 'rojo', 'caleb');
  animal.color = 'blanco';

  print(animal.color);

  var dog = Dog('Golden Retriver', 23, 4, 'yellow', 'Sanson');
  dog.showInfo();
}