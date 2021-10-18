import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

TextEditingController _textFieldController = TextEditingController();

Future<void> categoryCreateDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Создать категорию'),
        content: SizedBox(width: 300, height: 430, child: Column(children: [
          TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: "Название"),
        ),
        ColorPicker(pickerColor: Colors.red, showLabel: false, enableAlpha: false, portraitOnly: true, onColorChanged: (Color color){print(color);})
        ])),
        actions: <Widget>[
          TextButton(
            child: const Text('CANCEL'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              print(_textFieldController.text);
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}