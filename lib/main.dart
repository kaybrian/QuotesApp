import 'package:flutter/material.dart';
import 'quote.dart'

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
 List<Quote> quotes = [
        Quote(text:'We Generate Fears While We Sit. We Overcome Them By Action.', author:'Brian'),
        Quote(text:'We May Encounter Many Defeats But We Must Not Be Defeated.',author:'kayongo'),
        Quote(text:'Don’t Let Yesterday Take Up Too Much Of Today.',author:'johnson')
    ];

    Widget quoteTemplate(quote){
        return Card(
            margin:EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
            child:Padding(
                padding:const EdgeInsets.all(10.0),
                child:Column(
                    crossAxisAlignment:CrossAxisAlignment.stretch,
                children:<Widget>[
                    Text(quote.text,
                    style:TextStyle(
                        fontSize:18.0,
                        color:Colors.grey[550],
                     ),
                    ),
                    SizedBox(height:30.0 ),
                    Text(quote.author,
                    style:TextStyle(
                        fontSize:16.0,
                        color:Colors.grey[800],
                     ),
                    ),

                ],
            ),
            )
        );
    }
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
            children: quotes.map( (quote) => quoteTemplate(quote)).toList(),
        ),
    );
  }
}
