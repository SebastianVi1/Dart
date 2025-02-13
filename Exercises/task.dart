
class Task{ 
  
  String _task;
  DateTime? creationDate;
  bool taskCompleted = false;


  Task( this._task){
    print('Task created');
    creationDate = DateTime.now();
  }

  
  String getTask(){
    return _task;
  }

  void setTask(String task){
    this._task = task;
  }

  void checkTaskCompleted(){
    taskCompleted = true;
  }
}
