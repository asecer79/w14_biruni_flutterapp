import 'package:flutter_application_4/models/student.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyDataProvider extends StateNotifier<Student> {
  MyDataProvider() : super(Student(id: 0, fullName: ""));

  void setData(Student student) {
    state = student;
  }
}

var myGlobalDataProvider = StateNotifierProvider<MyDataProvider,Student>((ref) {
  return MyDataProvider();
});


