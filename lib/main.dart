import 'package:flutter/material.dart';
import 'package:gorlanov_case_2_3/app_bar_screen.dart';
import 'Switches.dart';
import 'navigation_drawer_screen.dart';
import 'app_bar_screen.dart';
import 'dart:developer';

void main() {


//  runApp(const Switches()); // -- radio buttons and checkbox tests
//  runApp(const NavigationDrawerScreen()); // --drawer
//  runApp(const AppBarScreen()); // -- Appbar screen

runApp(
  MaterialApp(
    title: "Pancake APP",
    initialRoute: '/',
    routes: {
      '/': (context) => const NavigationDrawerScreen(),
      '/second':(context) => const SecondScreen(),
    },
    ),
);

}

//class SecondScreen extends StatelessWidget {
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    const a=0;
    inspect(a);
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.amber,
        title: const Text('Список пуст (0)'),
      ),

      body: Container(
        child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text("На текущий момент рецептов не добавлено",
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
              const Icon(Icons.add_box_outlined, color: Color(0xffCB4D02)),
              InkWell(child: const Text("Добавить рецепт", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffCB4D02),
              ),

              ), onTap: () {
              }
              ),
              SizedBox(height:10,),

            ]


        ),
      ),
    );
  }
}



