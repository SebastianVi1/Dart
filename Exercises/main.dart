import 'dart:io';
import 'task.dart';
import 'task_list.dart';

void main(){
  
  

  
  while (true){
    print('1. Add a task.');
    print('2. SHow tasks.');
    print('3. Compleate task.');
    print('4. Delete task.');
    print('5. Exit.');
    stdout.write('Choose an option:');
    int option = int.parse(stdin.readLineSync() ?? '5');
    var database = Database();
  
    
    switch (option){
      case 1:
        database.addTask();
      
      case 2:
        database.showTasks();
      
      case 3:
      var index = 0;
      database.checkTask(Database.taskList[index]);
      
      case 4:
      database.deleteTask();

      case 5:
        break;
      
    }
    
  }
}