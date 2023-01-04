import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/student.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpodmanager/mydataprovider.dart';

class Page2 extends ConsumerWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   var listenedData = ref.watch(myGlobalDataProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Page2")),
      body: Center(
          child: Container(
        color: Colors.brown,
        child: Padding(
            child: Column(
              children: [
                Text(listenedData.fullName, style: TextStyle(fontSize: 30)),
                TextField(style: TextStyle(fontSize: 30),onChanged: (value) {
                  ref.read(myGlobalDataProvider.notifier).setData(Student(id: 1, fullName: value));
                },),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Goto page1", style: TextStyle(fontSize: 30)))
              ],
            ),
            padding: EdgeInsets.all(25)),
      )),
    );
  }
}
