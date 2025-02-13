import 'dart:io';

import '../async.dart';
import 'task.dart';

class Database{
  static List<Task> taskList = [];

  
  void addTask(String task){
    
    var task1 = Task(task);
    taskList.add(task1);
    print('Task added.');


  }

  void deleteTask(){
    stdout.write('Number of task to deleate: ');
    var number = int.parse(stdin.readLineSync()!);
    taskList.remove(taskList[number-1]);
    print('Task removed succesfuly');
  }

  void showTasks(){ 
    if (taskList.isEmpty){
      print("The list is empty");
    }
    else{
      
      var counter = 1;
      for (var task  in taskList) {
        var name = task.getTask();
        var creationDate = task.creationDate;
      print("Task $counter. $name ");
      print("Task creation date: $creationDate");
      }
    }
    
  }

  void modifyTask(int index){
    if (taskList.isEmpty){
      print("The list is empty");
    }
    else{
      stdout.write("Task to replace");
      String newTask = stdin.readLineSync()!;
      var task = taskList[index];
      task.setTask(newTask);
      print("Task modified");
    }

  }

  void checkTask(){
    showTasks();
    stdout.write('Choose a option: ');
    int option = int.parse(stdin.readLineSync() ?? '99');
    taskList[option-1].checkTaskCompleted();
  }

  void addExternalTask() async{
    
    final task = await readFileAsync('file.txt');
    print("hecho");
    print(task);
    addTask(task);
  }
}