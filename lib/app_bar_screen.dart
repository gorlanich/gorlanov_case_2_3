import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Демо AppBar"),
          actions: <Widget>[
            IconButton(tooltip: "Баланс", onPressed: () {}, icon: const Icon(Icons.account_balance)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.whatshot_rounded)),
            TextButton(style: buttonStyle, onPressed: () {}, child: const Text("Профиль")),
          ]
        ),
        body: Center(child: Text("Content")),

      )
    );
  }
}
