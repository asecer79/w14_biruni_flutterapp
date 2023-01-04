import 'dart:async';
import 'package:flutter_application_4/models/student.dart';

class MyStreamController {

var current = Student(id: 0, fullName: "");
  StreamController<Student> _streamController = StreamController.broadcast();
  Stream<Student> get getStream =>_streamController.stream;
  Sink get _sink => _streamController.sink;

  void updateStudentInfo(Student student){
    _sink.add(student);
    current=student;
  }
}

var myStreamController = MyStreamController();