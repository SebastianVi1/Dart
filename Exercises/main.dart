import 'dart:io';
import '../async.dart';
import 'Database.dart';

void main() async{
  var database = Database();
  

  
  while (true){
    print('');
    print('       ___OPTIONS___      ');
    print('1. Add a task.');
    print('2. SHow tasks.');
    print('3. Compleate task.');
    print('4. Delete task.');
    print('5. Add an external file task.');

    print('');
  
    stdout.write('Choose an option:');
    int option = int.parse(stdin.readLineSync() ?? '5');
    switch (option){
      case 1:
      stdout.write('Task to do: ');
      String task = stdin.readLineSync()!;
      database.addTask(task);
      
      case 2:
        database.showTasks();
      
      case 3:
      database.checkTask();
      break;

      
      case 4:
      database.deleteTask();
      break;

      case 5:
        final str = await readFileAsync('Exercises/file.txt');
        database.addTask(str);
        break;
      
      case 6:
        return;
    }
    
  }
}