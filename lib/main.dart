import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 List<String> quotes = [
        'We Generate Fears While We Sit. We Overcome Them By Action.',
        'We May Encounter Many Defeats But We Must Not Be Defeated.',
        'Don’t Let Yesterday Take Up Too Much Of Today.'
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.grey[200],
        appBar:AppBar(
            title:Text('ALL Quotes'),
            centerTitle:true,
            backgroundColor:Colors.redAccent,
        ),
        body:Column(
            children: quotes.map( (quote) {
                return Text(quote);
            }).toList(),
        ),
    );
  }
}
