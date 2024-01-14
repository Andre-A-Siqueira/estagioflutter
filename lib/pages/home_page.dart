import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required TextStyle style});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

//! O "-" é feito para não ser visto por arquivos fora desse arquivo.
  void _incrementCounter() {
    //!Metodo
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.amber[800],
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Container(
                color: Colors.amber[200],
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.red,
                      child: const Text(
                        'ROW10',
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      child: const Text(
                        'ROW20',
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      child: const Text(
                        'ROW30',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.all_inclusive_rounded),
      ),

      /*    floatingActionButton2: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),  */ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
