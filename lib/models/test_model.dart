import 'package:flutter/widgets.dart';

class TestModel {
  final String? id;
  final String? name;

  const TestModel({
    this.id,
    required this.name,
  });

  toJson() {
    return {"name": name};
  }
  // factory TestModel.fromJson(Map<String, dynamic> json){
  //   return TestModel(
  //     id:json['user']['id'],
  //     name:json['user']['id'],
  //   );
  // }
}
