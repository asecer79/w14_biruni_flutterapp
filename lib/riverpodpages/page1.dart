import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/student.dart';
import 'package:flutter_application_4/riverpodpages/page2.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../riverpodmanager/mydataprovider.dart';



class Page1 extends ConsumerWidget {


  const Page1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var listenedData = ref.watch(myGlobalDataProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Page1")),
      body: Center(
          child: Container(
        color: Colors.amberAccent,
        child: Padding(
            child: Column(
              children: [
                Text(listenedData.fullName, style: TextStyle(fontSize: 30)),
                TextField(
                  style: TextStyle(fontSize: 30),
                  onChanged: (value) {
                    ref
                        .read(myGlobalDataProvider.notifier)
                        .setData(Student(id: 1, fullName: value));
                  },
                ),
                ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Page2();
                      }));
                    },
                    child: Text("Goto page2", style: TextStyle(fontSize: 30)))
              ],
            ),
            padding: EdgeInsets.all(25)),
      )),
    );
  }
}
