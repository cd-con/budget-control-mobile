import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:flutter/material.dart';
import 'package:futter_playground/pages/new_category.dart';

import 'utils/random_quote.dart';

var userCategories = <Widget>[];

class categoryPage extends StatefulWidget{
  const categoryPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new categoryContainer();
}



class categoryContainer extends State<categoryPage> {
  @override
  Widget build(BuildContext context) {
    var content;
    if (userCategories.isEmpty){
      content = [const Text("")]; // NullSafety hack
    }else{
        content = userCategories;
    }
    return Scaffold(
        body: ListView(children: content),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton:
        FloatingActionButton(

            child: const Icon(Icons.add),
            backgroundColor: Colors.blueAccent,
            onPressed: () async {
               // Update on call, cool hack
              var test = await Navigator.push(context, MaterialPageRoute(builder: (context) => const NewCategoryContainer()));
              if (test){setState(() {});}
            },));
  }

}


void addCard(String text, Color color){
  userCategories.add(
      Card(
        child:
        Column(
          mainAxisSize: MainAxisSize.min,
          children:
          <Widget>[
            ListTile(
              leading: Icon(Icons.article_rounded, color: color,),
              title: Text(text),
              subtitle: Text('Расходы за месяц: 0 rub'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Редактировать'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Подробнее'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      )
  );
}