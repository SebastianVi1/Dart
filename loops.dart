void main(){
  //For loop
  var message = 'Dart is fun!';
  for (var i=0; i < 5;i++){
    print(message);

  }
  List<String> list = ['Apple', 'Orange', 'Avocato'];

  
  for (var fruit in list) {
    print(fruit);
    
  }


  //For each loop

  var collection = [1,2,3];
  collection.forEach(print);//For each its going to iterate the array and the action to realize is print on console

  //While loop

/* while (!isDone()) {
  doSomething();
}  */
  var i =0;
  while (i<8){
    print(i);
    i++;
  }
  i = 0;
  do {
    print("Hecho");
    i++;
  }while(i< 8);

  // while (true) {
  // if (shutDownRequested()) break;
  // processIncomingRequests();
//}

}