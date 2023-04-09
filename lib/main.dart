import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal Embarque',
      theme: ThemeData(
      primarySwatch: Colors.blue      ),
      home: const MyHomePage(title: 'Portal Embarque'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _incrementCounter2() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
             const SizedBox(), // Espaçamento vertical
              Image(
              image: AssetImage('assets/images/logo.png'),
              width: 200,
              height: 200, 
           ), 
            const Text(
              'Você apertou o botão:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),  
          ],
        ),
      ),
    
      floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      FloatingActionButton(
      onPressed: _incrementCounter2,
      tooltip: 'Diminuir',
      child: const Icon(Icons.remove),
    ),
     const SizedBox(width: 16),
    FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Aumentar',
      child: const Icon(Icons.add),
    ),
  ],
),
       // This trailing comma makes auto-formatting nicer for build methods. // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

