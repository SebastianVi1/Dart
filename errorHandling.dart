void main(){
  try {
  // We try executing a program that will throw an error
  int result = 10 ~/ 0; // This will throw an zero division error
} catch (e) {
  // Here we handle the exeption
  print('Ocurrió un error: $e');
}


//If you detect an error inside of your own code you could throw an exception
void checkAge(int age) {
  if (age < 0) {
    throw ArgumentError('Your age cant be a negative number.');
  }
  print('Edad válida: $age');

}
try{
  checkAge(-23);

}catch (e){
  print("Error: $e");
}
///uno
try {

  int result = 10 ~/ 0; // Division by zero

} on IntegerDivisionByZeroException catch (e) {
  // Capture a specific exception
  print('Zero division error: $e');
} catch (e) {
  // Captures any exception
  print('Other type of error: $e');
}


try {
  
  int result = 10 ~/ 0;
} catch (e) {
  print('Error: $e');
} finally {
  print('This block is goint to execute always');
}

}
