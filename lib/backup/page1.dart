import 'package:flutter/material.dart';
import 'package:flutter_application_4/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page1")),
      body: Center(
          child: Container(
        color: Colors.amberAccent,
        child: Padding(
            child: Column(
              children: [
                Text("data", style: TextStyle(fontSize: 30)),
                TextField(style: TextStyle(fontSize: 30)),
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
