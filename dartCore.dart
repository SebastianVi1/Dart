//Printing on console
import 'dart:ffi';

void main(){
  print("Hello from the console");

  //Convert string to number
  String numberString = '900';
  var numDouble = num.parse(numberString);

  print("Double number: $numDouble");

  //Convert int to stirng
  int numToString = 400;
  String stringNum = numToString.toString();

  print(stringNum);

  //Strings and regular expressions
  String string = "This is a phrase for the example";

  assert(string.startsWith("Th"));
  assert(string.endsWith("example"));
  print("Indice de la palabra for en la cadena $string");
  print(string.indexOf("for"));
  print(string.contains("is a"));//Verify if a substring is in a string
  
  var substring = string.substring(5, 10);
  print(substring);

  var list = string.split(' ');
  print(list);

  var stringUpperCase = string.toUpperCase();
  print(stringUpperCase);

  String stringTrim = ' Hello world ';
  
  print(stringTrim.trim()); //Eliminate the first and the last space of a string


  var list2 = [1,2,89,09,79,76,78];
  list2.sort();
  print(list2);

  var teas = ['green', 'black', 'chamomile', 'earl grey'];

  var loudTeas = teas.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);

}