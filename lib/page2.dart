import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/student.dart';
import 'package:flutter_application_4/page2.dart';

import 'streamcontroller/mystreamcontroller.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Student>(
        stream: myStreamController.getStream,
        initialData: myStreamController.current,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(title: Text("Page2")),
            body: Center(
                child: Container(
              color: Colors.amberAccent,
              child: Padding(
                  child: Column(
                    children: [
                      Text(snapshot.data!.fullName, style: TextStyle(fontSize: 30)),
                      TextField(
                        style: TextStyle(fontSize: 30),
                        onChanged: (value) {
                          myStreamController.updateStudentInfo(
                              Student(id: 1, fullName: value));
                        },
                      ),
                      ElevatedButton(
                          onPressed: ()  {
                           Navigator.pop(context);
                          },
                          child: Text("Goto page1",
                              style: TextStyle(fontSize: 30)))
                    ],
                  ),
                  padding: EdgeInsets.all(25)),
            )),
          );
        });
  }
}
