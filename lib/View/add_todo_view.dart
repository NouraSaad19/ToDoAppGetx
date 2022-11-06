import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/todo_controller.dart';

class AddTask extends StatelessWidget {
  AddTask({super.key});

  ToDoController cintroller = Get.put(ToDoController());
  @override
  Widget build(BuildContext context) {
    String? newNameTaskvalue;
    return Container(
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 30,
          ),
          Text(
            "ADD TASK",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 30,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'ADD TASK', //مايختفي لما اجي اكتب يرقى فوق
              prefixIcon: const Icon(Icons.playlist_add_check),
            ),
            //onFieldSubmitted
            onChanged: (value) => newNameTaskvalue = value,
            // يمسك القيمه الي راح يدخلها اليوزر
            //onChanged: (value) => print(value),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            color: Color.fromARGB(255, 10, 95, 169),
            child: MaterialButton(
              onPressed: () {
                cintroller.addTask(newNameTaskvalue!);
                Get.back();
              },
              child: Text("Add", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
