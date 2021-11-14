import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SettingsContainer();
}

class SettingsContainer extends State<SettingsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [

        Card(
          child:
          Column(
            mainAxisSize: MainAxisSize.min,
            children:
            <Widget>[
              const ListTile(
                leading: Icon(Icons.sync,),
                title: Text("Синхронизация"),
                subtitle: Text('Синхронизируйте дебет с кредитом'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Синхронизировать'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),

          Card(
            child:
            Column(
              mainAxisSize: MainAxisSize.min,
              children:
              <Widget>[
                const ListTile(
                  leading: Icon(Icons.format_paint,),
                  title: Text("Оформление"),
                  subtitle: Text('На вкус и цвет товарищей нет :('),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('Сделать ярче'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          )
        ]
        ));
  }

}
