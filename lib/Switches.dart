import 'package:flutter/material.dart';

class Switches extends StatefulWidget {
  const Switches({Key? key}) : super(key: key);

  @override
  _SwitchesState createState() => _SwitchesState();
}

enum skills{junior,middle, senior}

class _SwitchesState extends State<Switches> {
  bool _checked =false;
  bool _confirm = true;
  skills? _skills = skills.junior;

void _onCheckedChange(bool? val)
{
  setState(() {
    _checked=!_checked;
  });
}

void _onSkillsChanged (skills? value) {
  setState(() {
    _skills = value;
  });
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body:Container(
            child: Center(
              child: Column(
                  children:  [
                    Row(children:[
                      Checkbox(value: _checked, onChanged: (val) {
                        setState(() {
                          _checked=!_checked;
                        });
                      }),
                      Text("выбор"),
              ],
        ),
                  CheckboxListTile(
                      value: _confirm,
                      onChanged: (val) {
                        setState(() {
                          _confirm=!_confirm;
                        });
                      },
                    title: Text("Принять"),
                  ),
                  Switch(value: _checked, onChanged: _onCheckedChange),
                  SwitchListTile(
                    title: Text('text'),
                      subtitle: Text('sdfsdf'),
                      value: _checked,
                      onChanged: _onCheckedChange),
                  const Text('Experience:'),
                    RadioListTile<skills>(
                      title: const Text('junior'),
                      value: skills.junior,
                      groupValue: _skills,
                      onChanged: _onSkillsChanged,
                    ),
                    RadioListTile<skills>(
                      title: const Text('middle'),
                      value: skills.middle,
                      groupValue: _skills,
                      onChanged: _onSkillsChanged
                    ),
                    RadioListTile<skills>(
                      title: const Text('senior'),
                      value: skills.senior,
                      groupValue: _skills,
                      onChanged: _onSkillsChanged
                    ),

                  ]
              ),
            )


        ),
      ),
    );
  }
}
