import 'package:get/get.dart';

class ToDoController extends GetxController {
  var tasks = [
    "solve HW",
    "go to shopping",
    "learn flutter",
  ].obs;
  bool isDone = false;

  void addTask(String newNameTask) {
    tasks.add(newNameTask);
  }

  void cheakTask(bool isDone) {
    isDone = !isDone;
  }

  void delete(task) {
    tasks.removeAt(task);
  }
}
