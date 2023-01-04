import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page2")),
      body: Center(
          child: Container(
        color: Colors.brown,
        child: Padding(
            child: Column(
              children: [
                Text("data", style: TextStyle(fontSize: 30)),
                TextField(style: TextStyle(fontSize: 30)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Goto page1", style: TextStyle(fontSize: 30)))
              ],
            ),
            padding: EdgeInsets.all(25)),
      )),
    );
  }
}
