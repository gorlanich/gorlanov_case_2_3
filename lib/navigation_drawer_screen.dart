import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final _messengerKey=GlobalKey<ScaffoldMessengerState>();


  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
      return Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber,title: const Text("Главная"),
            actions: <Widget>[
              IconButton(tooltip: "Баланс", onPressed: () {}, icon: const Icon(Icons.account_balance)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.whatshot_rounded)),
              TextButton(style: buttonStyle, onPressed: () {}, child: const Text("Профиль")),
            ]),
        drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  //https://ampravda.ru/files/articles-2/46669/ugdkdxfl8w0j.jpg
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Container(
                      height:100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("PANCAKE APP", textScaleFactor: 2,),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          height:100,
                          child: Image.network("https://ampravda.ru/files/articles-2/46669/ugdkdxfl8w0j.jpg"),

                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.water_damage_rounded),
                  title: const Text("Главная"),
                  onTap: (){
                    Navigator.pushNamed(context, '/');
                  },

                ),
                ListTile(
                  leading: const Icon(Icons.add_rounded),
                  title: const Text("Рецепты"),
                  onTap: (){
                    Navigator.pushNamed(context, '/second');

                  },

                ),
                ListTile(
                  leading: const Icon(Icons.two_k),
                  title: const Text("Секреты теста"),
                  onTap: (){},

                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: Text("Профиль",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                  ),
                  ),

                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Настройки"),
                  onTap: (){},

                ),
              ]
          ),
        ),

          body:
          Container(
            child:  Column(
              children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("      Древнерусское слово блин происходит от млин, связанного с глаголами мелю, молоть. То есть обозначает изделие из смолотого зерна, муки. В русской кухне блины появились не позднее IX века. Предшественниками блинов и оладьев из дрожжевого теста (кислого, заквашенного) были блинчики, оладьи и лепёшки из пресного теста.",
                textScaleFactor: 1.3, textAlign: TextAlign.justify, style: TextStyle(
                      fontWeight: FontWeight.w600,
                  ),
              ),
            ),
SizedBox(height:40),
        Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            height:100,
            child: Image.network("https://www.pinclipart.com/picdir/big/525-5251782_pancake-png-image-pancake-clipart-png-transparent-png.png"),


        ),
                SizedBox(height:90),
                InkWell(child: const Text("Case 2.3, author: Gorlanov AA", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffCB4D02),
                ),

                ), onTap: () {
                  final snackBar = SnackBar(
                    content: const Text('Студент группы ЦП_РКПд-21-06'),

                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                }
                ),
                SizedBox(height:10,),

              ]


            ),
          ),


        );

  }
}
