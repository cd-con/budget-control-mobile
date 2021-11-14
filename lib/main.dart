import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:futter_playground/pages/category.dart';
import 'package:futter_playground/pages/settings.dart';
import 'package:futter_playground/pages/stats.dart';
import 'pages/home.dart';

enum screenOpen{
  home,
  stats,
  events,
  category,
  settings
}

bool lockDrawer = false;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Control Mobile',
      theme: ThemeData(primarySwatch: Colors.blue),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('ru', ''),
      ],
      home: const AppContainer(),
    );
  }
}

class AppContainer extends StatefulWidget{
  const AppContainer({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => MainContainer();
}

class MainContainer extends State<AppContainer>{

  screenOpen _state = screenOpen.home;

  @override
  Widget build(BuildContext context) {
    const UserAccountsDrawerHeader header = UserAccountsDrawerHeader(
      accountName: Text("Rusty"),
      accountEmail: Text("neskvik.s.pivom@yandex.ru"),
      currentAccountPicture: FlutterLogo(),);
    Drawer navDrawer = Drawer(child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: header,
          ),
          ListTile(
            title: const Text('Главная'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
              setState(() {
                _state = screenOpen.home;
              });
            },
          ),
          ListTile(
            title: const Text('Статистика'),
            leading: const Icon(Icons.bar_chart),
            onTap: () {
              Navigator.pop(context);
              setState(() {
                _state = screenOpen.stats;
              });
            },
          ),
          ListTile(
            title: const Text('События'),
            leading: const Icon(Icons.event),
            onTap: () {
              Navigator.pop(context);
              setState(() {
                _state = screenOpen.events;
              });
            },
          ),
          ListTile(
            title: const Text('Категории'),
            leading: const Icon(Icons.category),
            onTap: () {
              Navigator.pop(context);
              setState(() {
                _state = screenOpen.category;
              });
            },
          ),

          ListTile(
            title: const Text('Настройки'),
            leading: const Icon(Icons.settings),
            onTap: () {
              Navigator.pop(context);
              setState(() {
                _state = screenOpen.settings;
              });
            },
          ),
        ],
      ));
    var content;
    switch (_state) {
      case screenOpen.home:
        content = const homepageContainer();
        break;
      case screenOpen.category:
        content = const categoryPage();
        break;
      case screenOpen.settings:
        content = const SettingsPage();
        break;
      case screenOpen.stats:
        content = const StatsPage();
        break;
      default:
        break;
    }
    if (lockDrawer) {
      return Scaffold(appBar: AppBar(title: const Text("Budget control")),
        body: content);
    }else{
      return Scaffold(appBar: AppBar(title: const Text("Budget control")),
        body: content,
        drawer: navDrawer,);
    }
  }

}