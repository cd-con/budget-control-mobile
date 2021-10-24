import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'utils/date.dart';

class homepageContainer extends StatelessWidget{
  const homepageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String monthName = prettyDate(DateTime.now());
    return Center(
      child: Column(
        children: [
          ///
          /// Модуль "Траты за ..."
          /// TODO Обновление элементов, рабочие кнопки

          Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.bar_chart),
                title: Text('Расходы за %month%'.replaceFirst("%month%", monthName)),
                subtitle: Text('0 rub'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Подробнее'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
          ///
          /// Модуль "Ваши средства"
          /// TODO Обновление элементов, рабочие кнопки
        Card(
          child:
            Column(
              mainAxisSize: MainAxisSize.min,
              children:
                <Widget>[
                  const ListTile(
                    leading: Icon(Icons.monetization_on_outlined),
                    title: Text('Ваши средства'),
                    subtitle: Text('0 rub'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Подробнее'),
                        onPressed: () {/* ... */},
                      ),
                    const SizedBox(width: 8),
                    ],
                  ),
                ],
            ),
        ),
          ///
          /// Модуль "Цели"
          /// TODO Обновление элементов, рабочие кнопки
        Card(
          child:
          Column(
            mainAxisSize: MainAxisSize.min,
            children:
            <Widget>[
              const ListTile(
                leading: Icon(Icons.accessible_forward_rounded),
                title: Text('Ваши цели'),

                // Placeholder
                subtitle: Text('У Вас нет целей, но вы можете создать новые'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('К Целям'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
  //ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("You called state: homepage")));
}
