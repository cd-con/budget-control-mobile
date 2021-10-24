
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:futter_playground/pages/utils/random_quote.dart';

import 'category.dart';

class NewCategoryContainer extends StatefulWidget{
  const NewCategoryContainer({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => NewCategoryContent();
}

class NewCategoryContent extends State<NewCategoryContainer>{
  Color pickedColor = Colors.amber;
  @override
  Widget build(BuildContext context) {
    TextEditingController categoryName = TextEditingController();
    return Scaffold(
        appBar: AppBar(title: Text(randomQuote(quoteType.categoryCreate), textScaleFactor: 0.8)),
        body: Wrap(children: [

          Center(child: (
            SizedBox(
                width: 320,
                child: (
              TextField(
                controller: categoryName,
                decoration:
                InputDecoration(labelText: "Введите название категории",
                                hintText: randomQuote(quoteType.randomWord)),
              )
            )
            ))
          ),
          const SizedBox(height: 76),
          Center(child:
            SlidePicker(pickerColor: Colors.amber,
              enableAlpha: false,
              showLabel: false,
              onColorChanged: (Color col) {pickedColor = col;},
              paletteType: PaletteType.rgb)
          ),
          const SizedBox(height: 76),
          Center(child: (
            SizedBox(width: 225, child:(
              Row(children:[Center(child:(ElevatedButton(child:const Text("Отмена"),onPressed: () { Navigator.pop(context);}))), const SizedBox(width: 50), Center(child:(ElevatedButton(child:const Text("Создать"),onPressed: () {
                if (categoryName.text.isEmpty){
                  Vibrate.vibrate();
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Название не может быть пустым!")));
                }else {
                  addCard(categoryName.text, pickedColor);
                  Navigator.pop(context, true);
                }})))])))))
        ],
        )
    );
  }
}