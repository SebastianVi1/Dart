//Printing on console

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
  loudTeas.forEach(print);//Make an iteration in a Iterable objcet then give to thena action to make


  //DateTime Library

  // Get the current date and time.
var now = DateTime.now();

// Create a new DateTime with the local time zone.
var y2k = DateTime(2000); // January 1, 2000
  
// Specify the month and day.
y2k = DateTime(2000, 1, 2); // January 2, 2000

// Specify the date as a UTC time.
y2k = DateTime.utc(2000); // 1/1/2000, UTC

// Specify a date and time in ms since the Unix epoch.
y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);

// Parse an ISO 8601 date in the UTC time zone.
y2k = DateTime.parse('2000-01-01T00:00:00Z');

// Create a new DateTime from an existing one, adjusting just some properties:
var sameTimeLastYear = now.copyWith(year: now.year - 1);

}