import 'dart:io';

void main(){
  stdout.write('Name: '); //print without line break
  String? name = stdin.readLineSync() ?? 'Sebastian'; //Defalt case
  name = Capitalize(name);
  stdout.write('age');
  int age = int.parse(stdin.readLineSync() ?? '0');
  print("My name is $name and i have $age years old!");
}

String Capitalize(String string){
  if (string.isEmpty) return string;

  return string[0].toUpperCase() + string.substring(1).toLowerCase();
}