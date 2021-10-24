
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 0)
class categoryData{
  categoryData({required this.name, required this.color, required this.isSpend});
  @HiveField(0)
  String name;
  @HiveField(1)
  Color color;
  @HiveField(2)
  bool isSpend;
}

Future<void> initHive() async {
  await Hive.initFlutter();
}

void createCategory(String name, Color color, bool isSpend){
  var box = Hive.box('categoryContainer');
  box.add(categoryData(name: name, color: color, isSpend: isSpend));
  box.close();
}

categoryData getCategory(String name){
  var box = Hive.box('myBox');
  //categoryData data = box.get();
  //return data
}