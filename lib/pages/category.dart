import 'dialogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class categoryContainer extends StatelessWidget {
  const categoryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: const Center(child: Text('У вас нет категорий!\nНажмите [+], чтобы добавить',textAlign: TextAlign.center,)),
        floatingActionButton:
        FloatingActionButton(
            onPressed: () {
              categoryCreateDialog(context);
            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.blueAccent));
  }
}